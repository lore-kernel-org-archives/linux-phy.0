Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92BDFCD4846
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 03:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TK8VVQLi0UDhDCCWupm81YrxN6ENiSWuj1u36yStYjc=; b=4iJx4v4hcDscq9
	wiSl5K4JaZFfV0v0lYIjSruLoRE4+xhSKBtE/WObJLwXTsfuBXHIWg59AhTOvGUTKDf3EY/WE4oEP
	GXMf+h6mdcktUWRmS+W2Puq7vJ81K/JkUtfRKSFSU/4ZVLvfk6ub2mrW50K6LUxzI1NBypAdbRWVb
	OpcO4nK5uLIhER/QUul/TkBQogACKQUB7eskFgxy5y24KMd60qLq9vaGkRWHH6y4m1qED28Xb6vfn
	nkrPpkNNS8E5nSeapuJpAYkO2RRI+Ly1QDyOHPK+q2aWhHH1sa/be0H6oXxRvt/HPq1XZJYyhBzRW
	kICZBL7Karsa5yXF8tgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNNDc-00000004UoJ-1Ghu;
	Thu, 14 May 2026 03:58:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNNDZ-00000004UnY-42Ik
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 03:58:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64E0wTLN4159821
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 03:58:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TSbDzdAE8ptqW0SfenM4rB
	SaW0jC2PEUuRNQdXSt2gQ=; b=jCMZ1dGYwnJhzqEltTALw1P+Bz2QEP8y7doYYE
	aUVBOmmEgvhf43BpXH4nyTYTGOQngvBn4hsh1ctXqPk1oZK5eccFGPa0FTxiCIOy
	ytaY42FQiPJmsnAUWIKG/uDLaY/aotprxRywE5fQ+/P+4VzOYs1/6ITVxNxb4dol
	QXaMazMe3LplhQ6f2QdqndqNjULt6vBRddiv6mjFY3TXwlwsIYV5jC2wZtndrWQr
	f8+9Ebe7LC1L0axhlPEo96MY2GRlbiNgNGHeqWIlyGUZtXA/+4ctYlXvwUCH00j3
	c9947sg+mxFNVh+qftgeOErWLPtrhhtBqKwLATVPyfJqp6vA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4p91uyd6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 May 2026 03:58:36 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2bd04e4fe3dso50186895ad.3
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 20:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778731116; x=1779335916; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TSbDzdAE8ptqW0SfenM4rBSaW0jC2PEUuRNQdXSt2gQ=;
        b=QiuzJxDC7+XJ08JKKLOu+HvQFiEBP0tWajMssQ2HL1Nivd22HMnQeFFjjVPpi/dYOh
         7k1hAWdziK51Fmlop/dRpVMIuWhszW2OLFQi6vxQFfSYhaHLYVFxNIL7yaZB5hIf/OyO
         C+Nv9qQc3iXZsYIfsS0XV8/N/3QicG/xdkZpY9TH7yv91NT+AWoY99hT+mSYHq4ZF15k
         EcInR7yzcxn6Z1Uk8PJAZhy1abwUYvLMuQWxo02O43jXVUJl/AFFQaG5hwTHWT4Ml3XG
         YFMVEZaeLGQsAAzjeRUyh0kJWkEqqpFpGQfAAuzXhLH/YsnhgQcVYo1C2HZoX3/oUvIo
         8dxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778731116; x=1779335916;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TSbDzdAE8ptqW0SfenM4rBSaW0jC2PEUuRNQdXSt2gQ=;
        b=W/EKfVqRD8H7/vJuQmUw3ihUuE6FeMjL3C5eSXurZkRt35BZ7ybaQEGBupiFca3+v2
         s8yjTjrj54b2zCkESGD8+G4gLbfo9/dVF1kQHEJ9kmfi2cUrhB2wtxiyq0yGu5toqpXw
         SJ+EWAjxHPe9FY8sI+oSfxJau7YIxElNibgeZYOjkZEVvwlFpxxNTu4e3aI/Fjrwkwb3
         nCT8CngsAk+FRDERE3AGeOjqI9ATupqbM18euh0sOOWLQGLmjv4ts4DJ8W7Lv0mkExOj
         HL0Eh6qC1MQ9l0hZA1+5Fkq+aVWWcznzGqC/tuq5pxbkDMcKLnZPCveALbD05IPMREf5
         PHtw==
X-Forwarded-Encrypted: i=1; AFNElJ909t9umcQ8NYVT/FejBYf3RPi1u+C8FiPi2eFljNTV5Fy6+rcfcUHg8RyOCILcO0zGEsSrIr8rVSc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwK0jawQlkOehk99H7yGx0XiAv7GqJQkWwb57tE2euMa8pS+irG
	eaLLMxedBRDfS5864uBLo+7hCknHdwIDmYC/WlEmrhri9snQYNqFo1z1bhDWmd+ATbLwcmJgAUp
	UKxui7tl69tjHreKFLRKUzAHoUI/kgxBZcGx/0V+gjokdkECswW8qAi5l6UzBP4EFa3oc
X-Gm-Gg: Acq92OHBCbgw0NRRuW63edSp5F9uY9SOIi88bHqdCCjXnOgafRafiiCjK9yRVdhuhtI
	5x/C7K1MUW1XyUrVSTDmr6bUVZCWoRB6FtGUHcKkVInohJhOz+jwxBJM2o1lf4DslDG/29BPQ2x
	B7w2AhkqpyYHtbx5LG9eauWG28XzO5RyYNj+3LinEm6Yv+riqmkFfk605AtA3zzU/5Sfp1bGD7c
	HJjh5RqyDabr2ZsGUZd9nYwOsGzqqyFihFUypRXkkMGDXHf4b2n47U5qFYQ12W6dJU8YJfvk7aI
	zhfXe8nDIz+Z7l+h39KkAye1RAryhUC8zLwWa19WbZfhAzHGJ3IISGv2lfkRTniGGAvDQTYVcaO
	YR5oPIbQCNTD5TPrj7GTcKJaOpXGTNucxqyZO8Xrbuu8wmljPTd5RX18/z74F/+Q26NMeNnLZyp
	QVGQ/21QB4scdVyb1Nd/qARNkp9KhwVlcuqJVTTdD73Qy3WiJQRU0=
X-Received: by 2002:a17:903:1b4e:b0:2bd:417:8ad with SMTP id d9443c01a7336-2bd30210d8amr59213555ad.20.1778731115623;
        Wed, 13 May 2026 20:58:35 -0700 (PDT)
X-Received: by 2002:a17:903:1b4e:b0:2bd:417:8ad with SMTP id d9443c01a7336-2bd30210d8amr59213175ad.20.1778731115124;
        Wed, 13 May 2026 20:58:35 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5bd5fe44sm8313965ad.11.2026.05.13.20.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 20:58:34 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH 0/2] Enable the QMP PCIe PHY present in Qualcomm ipq5210
 SoC
Date: Thu, 14 May 2026 09:28:27 +0530
Message-Id: <20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGNIBWoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDU0MT3YLkTN2CjEpdY4vUZMskw2TTREsDJaDqgqLUtMwKsEnRsbW1AGM
 MCntZAAAA
X-Change-ID: 20260514-pci-phy-38ec9b1c5a90
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: aQAidA6kLS2uBP_sXCmSq0-UMJfFRyqc
X-Proofpoint-GUID: aQAidA6kLS2uBP_sXCmSq0-UMJfFRyqc
X-Authority-Analysis: v=2.4 cv=G9Ys1dk5 c=1 sm=1 tr=0 ts=6a05486c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=WjzJGeGmWMr_TuVvyBQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE0MDAzNiBTYWx0ZWRfX9NLydFUnc8Ya
 er8cDR9LDiY66/6kmk4T2uLhhoIEwQu8ebrCOVr1PC9MifcsMYneXQV4lr+uOA6UlN4qK6sAwD6
 zffpDannHmITqq1Vxur+tVpPJ9oi/AcjiRHpQpOgNAg7i9v8/3Ia+U9EGOq2AFdWcs7KJqTx5HS
 BuS6oG8AZnKyG9c4oeCK+ZdLCP956NSGytvdDHwahwiVZuLmpJPl4LYvVnqo4fFpjLRn7bD28kg
 8OAGAHB4/d9NUYE+bYZMof+By6EsATXI+jvI4iFb0XqGVHbwpsqoH34Iz+3BiAXsTnnrRWtzPCM
 3Mopq97rTCfGB5F2Ao6/KbgCZ+7l6NQGfOUuwQEGtjeYt7j2vELGQ5PMi9U3lrnRYw3eC8EHMvY
 RsLAsru/QUvirIaDrutaVNzdjHP9wDIodww4XcvvwDPW6c4RBmqT+sBxms6zhxA3DytCn4FJB8c
 V1Q2GEGGDyA7fv4yFKA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-14_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 phishscore=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605050000
 definitions=main-2605140036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_205838_024121_64B85058 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Document the bindings and update the driver to support
the PCIe phy present in Qualcomm ipq5210 SoC.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 152 +++++++++++++++++++++
 2 files changed, 155 insertions(+)
---
base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
change-id: 20260514-pci-phy-38ec9b1c5a90

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
