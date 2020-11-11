class Paciente {
  int idPaciente;
  bool statusPaciente;
  String nomePai;
  String cpfPai;
  String nomeMae;
  String cpfMae;
  String enderPaciente;
  String compEnderPaciente;
  String cepPaciente;
  String cidadePaciente;
  String ufPaciente;
  String clinicaIdClinica;
  String usuarioIdususario;

  List<String> get attributesName {
    return [
      "idPaciente",
      "statusPaciente",
      "nomePai",
      "cpfPai",
      "nomeMae",
      "cpfMae",
      "enderPaciente",
      "compEnderPaciente",
      "cepPaciente",
      "cidadePaciente",
      "ufPaciente",
      "clinicaIdClinica",
      "usuarioIdususario",
    ];
  }

  List<Object> get attributes {
    return [
      idPaciente,
      statusPaciente,
      nomePai,
      cpfPai,
      nomeMae,
      cpfMae,
      enderPaciente,
      compEnderPaciente,
      cepPaciente,
      cidadePaciente,
      ufPaciente,
      clinicaIdClinica,
      usuarioIdususario,
    ];
  }

  Map<String, Object> get toJson {
    List<Object> attributes = this.attributes;
    List<String> attributesName = this.attributesName;
    Map<String, Object> toReturn;
    assert(attributes.length == attributesName.length);
    for (var i = 0; i < attributes.length; i++) {
      toReturn[attributesName[i]] = attributes;
    }
    return toReturn;
  }

  Paciente([
    pIdPaciente,
    pStatusPaciente,
    pNomePai,
    pCpfPai,
    pNomeMae,
    pCpfMae,
    pEnderPaciente,
    pCompEnderPaciente,
    pCepPaciente,
    pCidadePaciente,
    pUfPaciente,
    pClinicaIdClinica,
    pUsuarioIdususario,
  ]) {
    idPaciente = pIdPaciente;
    statusPaciente = pStatusPaciente;
    nomePai = pNomePai;
    cpfPai = pCpfPai;
    nomeMae = pNomeMae;
    cpfMae = pCpfMae;
    enderPaciente = pEnderPaciente;
    compEnderPaciente = pCompEnderPaciente;
    cepPaciente = pCepPaciente;
    cidadePaciente = pCidadePaciente;
    ufPaciente = pUfPaciente;
    clinicaIdClinica = pClinicaIdClinica;
    usuarioIdususario = pUsuarioIdususario;
  }

  static fromJson({Map<String, Object> json}) {
    assert(json != null);
    return Paciente(
      json["idPaciente"],
      json["statusPaciente"],
      json["nomePai"],
      json["cpfPai"],
      json["nomeMae"],
      json["cpfMae"],
      json["enderPaciente"],
      json["compEnderPaciente"],
      json["cepPaciente"],
      json["cidadePaciente"],
      json["ufPaciente"],
      json["clinicaIdClinica"],
      json["usuarioIdususario"],
    );
  }
}
