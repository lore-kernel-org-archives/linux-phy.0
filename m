Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69589CD98CE
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 05:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PNCT34t8gKxWenZxPobuJKHCKkZ9mlqb+VOOsyILi0E=; b=uLJYmzAY6jgD5C
	wsRTh3ARApWCOfJv4NSwmh3KNEw3B1SYN2YhYu67Oq/Pb+meKlF7a1V9Ez6JwGd/T8kCg5DqosjwW
	yxSOkbz12DYObjx6iCOPbO4Dn3scjn5+ZNFST45iJUEv0thzO3EbycjsR21CGWTuompkcGz1Q2cRH
	mtJ+nog70jZ+dwbaxJrB3/Ftto4jKF7zGdoyXP7aBPbLesuaK6UWdlBY32gw71nZ31WfZxkbjCQF6
	dKsh+FO9WidLMEPM5GQnE6qySpSFvc5yD8TQJGYfOiF6qyFACucmfwN8K0VliqlVq8P8CwJ+7WE9B
	VSQ145igvVqQ26dTD78w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZLyo-0000000FEGd-3OAH;
	Tue, 16 Jun 2026 05:04:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZLym-0000000FEFt-03Pc
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 05:04:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65G1xjPC1690672
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 05:04:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=19ZTO3F8MsnWqxrh4Ubj4M
	4mvN5UpQJnOBRUpNroWwo=; b=D+L0GTByGWU++UoJAbg1f2ANj4OEAn4Me1v3NA
	+9D7x/kAy0zKExWDDNG8JB3s6p0EwDHHRI5QZ0VWKUHkKKHCxUBNtSAUqBiMS/24
	0ba8SAiiKGF5jeBdsWKYw0FJTR4Hapna6WHMEixD2kh/9nAIPGgBorJtHq/JVlpQ
	hlSzUpxD2wUAOJzUNb7qU9+JfpnruwnegQTTKCQRQ03THkFLK3DEpfdaqLzdzZx0
	BP2UFOmECPwCcOGF5HqTtrcBmf7OzcDAK84tYdjDUlsvGrt03e58OdXMFp/cqOiP
	dJw2bwvu0yx/RL3tm8gk7d04zeNB51+ZDK+9L2r8cqJNRm5w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etetjvw9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 05:04:50 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2c0c36f1cc0so71723695ad.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 22:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781586290; x=1782191090; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=19ZTO3F8MsnWqxrh4Ubj4M4mvN5UpQJnOBRUpNroWwo=;
        b=Ai7M3X8NKqQO9qsiBk0P9tjAdRKeNADKcGR9QXiv4azHewc/6lnhqwE/IwpBrj8Zpi
         YxE8KEwMuFcGUB1YelzJVVujzMRLxNGKSDZz8gRzrElZt674ZZj8p8rQkM2uv1M+lWea
         Pyt+XtaYrN+pk3YD5XmWzY1UxOlSdZe5giMqKuoTplPY75+mURb7/Zo0/puPSm2GzScu
         4P3DdNe9B28BSauEryGXC3mFCTRHwklohUxgN66G+XhSfZMVOQEC4rUdbRcUw3P3s5zM
         xjefr6hEMqxPDjBqpj3URxd90QA9nC/tp2GApC4uTd9SZq1X19olaxqvOwiqHzF2jqck
         iNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781586290; x=1782191090;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=19ZTO3F8MsnWqxrh4Ubj4M4mvN5UpQJnOBRUpNroWwo=;
        b=btEaGgmqyjM4dN+1R59V4dlsU4IWuS2w1ertYsjMdF+caJFgwy29+oT+o3rT5ShAaz
         IOf6eXNWEXCWxQx042BcMlrFn7jd+PhJYux1pyHZ1x5ntVMZf+qR7CqaW4FOXcmj3tRL
         xIz6gT/inOV0odX01SQkvI09ltc6oJaCVP5sExQM8iiqmYVOX36y4J1SiEhJrUAyv07n
         EXWIkaXmgIFtduXADZkWy8fgYsTn7V88ITubgFeiTUr20JICwbhu2Qnw3W/xBTgrkp98
         1RfbLs5Y7wlxCxHQBrU4ReQ2wwm2dGzgkUrXkil04N5lv6twZYmzdyGsEx+VDKoUliny
         6fTQ==
X-Forwarded-Encrypted: i=1; AFNElJ9vScj/CcpDboLeXQyZhHixaiIKbN2Mg+xH3vKQ7IHOnC0KchhTIy6ahVbi8jszF/5hCfia/uEWymk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzbz3JaY4i3sGEpFuk/obYF25wOIi55FAUUzvilYeoCl/eSdxO3
	yS9WSrxxJzPVYH3WTZSpgbFm3qnIcs3Sp+BYxsQrOQkqMglThiCp+h1CIxEQlPCGErfR6enBaLp
	JIOy5pJHtNRedAADX+HxP45yp8DAAy4LI08kJbhKm4BGXEvwRYaC0M60tE5ttqEcq5ebo
X-Gm-Gg: Acq92OFgJK4uSJCr4hcBTp9KMxOicPmYzwxXjy0A/wgnutSLoEmjZgJmhbx52saSmMO
	HTLES56OXpm3MfebuNTtptraOjp3QhyhhjIKzuEEHJHF/6tUYSNWixp/A2CY54mXxc8WNK7Mn61
	sWncU9nDpm1sws3hwmtBNlmpIkvxzhQdQhDRepK6TeJ81z5TIg6IOJFgyHYbX27OZxCStGcJrV8
	j+Z6PbsLHGQUZdqxc24DUdUxlsUM2Fv8cZN64WefXBgYCBNAN2tKaQ3XousnhyH36qExvIIDEud
	Oq700gmTUDtBCXIZfzA2zn0lZ+m6OdO9v3+L4Tjx6hA8bGgje124dEkFKxUQBd6nuuvflXYWUqU
	Y7VuIJ42NwFfsgYX0IwRkY2pblLahkaQtcOgoyzyI68sOvTXa3gKBrCJKxqcZmgDQB/BxH0vQmS
	ODnrxTXRIP4JvHlQmby10Z3VWFyFJ6wLds2oB31K5/AsVa4FAclR8=
X-Received: by 2002:a17:903:2285:b0:2c0:db23:4a4 with SMTP id d9443c01a7336-2c412d25493mr182944855ad.36.1781586289913;
        Mon, 15 Jun 2026 22:04:49 -0700 (PDT)
X-Received: by 2002:a17:903:2285:b0:2c0:db23:4a4 with SMTP id d9443c01a7336-2c412d25493mr182944525ad.36.1781586289481;
        Mon, 15 Jun 2026 22:04:49 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f2e5590sm128957335ad.14.2026.06.15.22.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 22:04:48 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v4 0/2] Enable the QMP PCIe PHY present in Qualcomm ipq5210
 SoC
Date: Tue, 16 Jun 2026 10:34:40 +0530
Message-Id: <20260616-pcie-phy-v4-0-504677c3d727@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGjZMGoC/2WPy2rDMBBFf8VoXYXRw3p4lf8oWcjjUS1oYltyT
 EPwv1dxNoVuBs5wuY8nK5QTFdY1T5ZpSyVNtwr6o2E4htsX8TRUZhKkAQOez5iIz+ODex8xehF
 AxoFV+Zwppp/D6vPy5kzLvTqu7yfrQyGO0/Wa1q4JzlpltWoxBqF09DggGm/6oMCBbf0AGqOV7
 G+Trjl6tELzhMjTvLRSAIfQg4oqKHKq2wR7xY+prFN+HMM2eeT/37BJDtypHh2Q9TGY81TKabm
 H71fNUz3ssu/7LxU+PUwmAQAA
X-Change-ID: 20260609-pcie-phy-99fcf91a02fd
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDA0NyBTYWx0ZWRfX6pkcpyYE1uK/
 VA6p7ad4ROsIrHXwNnps4gtJJNgqnb2D3RIBbECdHrQ9WpN5sADqyUgtBrC0/arwOJ6Mag41isF
 w6zjXALy3RNrFzLiB0rMZRrlYizutP/xqkbLbJtM0oIjLAUVNtlVAIIm+lwyISi9wv+YFB3fzP7
 srVElP9m9VBfFsee38zny+WrWXbWRRwMREjQz/1MLmNLyJAmlMWbLqnWICkvKw1IPuU5qZGi2bi
 Tlde521URKLFSyJnzbrkrF9qTckHk/Un77pQmPvczfnxnIQOgsiGVciVyzJFDsBUBddflbH+dCe
 0oSIKxnONbpLD3KBAJQAypAR1Sj9uDt61Cstr3sAKoTVSONnx3ZT13TVuMU8hDPrlV/eHmXc76j
 gZklTAgiS05zlXJNEzwEqH6GeLSp4IwFEFGcxEdQH/myrEFHzCuGcFQRLmzucS537tzgWFf7cLm
 Hfuak8WL8C1OdTpSwmw==
X-Proofpoint-ORIG-GUID: tiKKsL_LShIKtBGGVLGEYMAsI_p26Dm1
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDA0NyBTYWx0ZWRfXxi/hKlk7JE6q
 WGAEwTJZ7R0RAwJgq9uGZDrU7Wir8nJEQS3tkLtugugtthC7vlUfimoPjmkO5MWbwsXTJioAz1X
 bYD3rqe9RTEl4SA+PCZLVLEFui6juko=
X-Authority-Analysis: v=2.4 cv=HttG3UTS c=1 sm=1 tr=0 ts=6a30d972 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=FkrAw2C3M-aabWWYlxUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: tiKKsL_LShIKtBGGVLGEYMAsI_p26Dm1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_01,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_220452_083457_7AE56395 
X-CRM114-Status: UNSURE (   9.67  )
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

v4: Fix commit message for the bindings patch by removing redundant content
    and adding explanation for using specific compatible.

v3: https://lore.kernel.org/linux-arm-msm/20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com/
    Fix commit message for the bindings patch
    Remove unused tables from the phy driver (ipq5210_gen3x1_pcie_ep_tx_tbl
    and ipq5210_gen3x1_pcie_ep_pcs_tbl)

v2: https://lore.kernel.org/r/20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com
    Had incorrectly made both the phys as fallback. The single
    lane phy is standalone and double lane uses ipq9574 as
    fallback.

v1: https://lore.kernel.org/linux-arm-msm/20260514-pci-phy-v1-0-482429192746@oss.qualcomm.com/

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Varadarajan Narayanan (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 129 +++++++++++++++++++++
 2 files changed, 131 insertions(+)
---
base-commit: a87737435cfa134f9cdcc696ba3080759d04cf72
change-id: 20260609-pcie-phy-99fcf91a02fd
prerequisite-change-id: 20260514-icc-ipq5210-0ab03f3a3e83:v1
prerequisite-patch-id: 0b6145b6635b18fe79fbbff5815041b43778c5ed
prerequisite-patch-id: 924c6ff7baf4283ac7991ee94c803a00fc5cece4
prerequisite-patch-id: c2fe1800fe769dccd37f94c19860a07f979e3c4c

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
