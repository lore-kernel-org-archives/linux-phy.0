Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A7DD232E9
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 07:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=San6DIrzWOpdou8l2ooi/xsnBkIEUoqfA/vDFtcA0D4=; b=HB+/MjNdI4FIpb
	3mHsqILUYWtKthDdY1NTwIbNtch8INvpUWtvmhhRwTF/StTWtxaYxjKXnkhFR4O8GEJy2qSzPI4WO
	6NglzuwhdmHy9eoCE5saqsTax2N+rXr+CmURTs74fsdA7AfhYVmzD6yU59U5LAjRnLiw9+wBJX955
	kqB5WSjVvdK6Y46QSjQwaQ77kuH3Rs+D1eD1dFziGKK0OKyPWBTCIIvdxByblRjM6oPZMNtm6qG2h
	p6BJ6d+nHYZLDpxAZgoOpgWU6vylLz4f3uhfTjpKP7vlYigoHPCk+aFPW0ThckRaMOmJLtisHsK5q
	F9kUZEoSLYb2V06eN8NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6oH-00000001hDz-14vP;
	Fri, 09 Jan 2026 07:21:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve6o9-00000001hAj-3y6K
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 07:21:24 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6094t2Gg2706815
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 07:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=w8/JF4/tv+7RolLNf/bATg
	nZLPU/tYClxfiouVTfnE8=; b=BoEBzhfiEu9C8OxNDpUZR1L+WlHQxrirT5yAj9
	cWij1FcNbWSZPZu2AFk72pzlUpAmaRgyQOUaqzTlDtswEGmPB4aQ61hH49+L1rq9
	DCwJyqz+ssfW8Ywi39mERZd0atmz9n6qLbioJwZVyEUAP0NQJhgNF/OiTeO1/lwP
	0Zuxs1/6wsFsQbH8HigyMVdqndX/YiqWBrBW6R2NnUA3NZM/l0LEFOEZAgxXoL5e
	LqwLU13M2WdLeOj2A6oiLta8HjFmAgjzzekVXZSmSQ+XOPmKwIKbMXzuDFb4tJSb
	caGpJRlIOzYDBnV6f57LR/wGOzolr2AcxYtloEbC7+lKg3CQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj9hqun4e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 07:21:15 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f1f69eec6so43722535ad.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 23:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767943275; x=1768548075; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w8/JF4/tv+7RolLNf/bATgnZLPU/tYClxfiouVTfnE8=;
        b=NS0Fbh4UpZyr5qbxCVXkAOclTMpGvXBRIYsZuNvpOxRUXqzMgLOKyMBM4JayM/udz7
         SMy5D25mgy4JSZwfBdP0fj6bogMZrv3Ux06drVvw3WQpA3gtRqP7ux3AE9WaFmzBMw3S
         nS///i38IYuISD0dN6eg909DVXWfyUDV7ksMn+6kySo67wepjCC6SAg6ZpLOK/Sh2xM7
         00KCcMuxfFcVtHdUMkVHdQs0ZZDkqf/lVUI7beQ55u3cvIT0/ew+Rd3jt8XPqj2sBeRx
         kON3nFdXoAHvrKWh1HR+EiNUZeQTOCPPdGB5d7VLPgJMxxVQ2ZpfcVPHt7bb3Z8eVAIa
         CsBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767943275; x=1768548075;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w8/JF4/tv+7RolLNf/bATgnZLPU/tYClxfiouVTfnE8=;
        b=rX9iuNTHe6oguzv9ACgYqvMYfytSQSt9P79H5kwLuawEIXX3UIImS7HORGIFQ6I49m
         b+QkjSt6hCMj/QsFVsi3afVoSCg6R/iEaRwca6a33082Kr+2+uvURDLPLqJXV/qpYgdf
         LKPfRgg1YT8FDlJ6DBiSqWt//ecCW/cQZmlNohGYgGbuqdIE/xaz+i0wXprbgbSyOl9a
         8uKFcO+qjCeMdyEPR8Cda5AdH2hRjjRJofgi18PpDAFAV8NvqWDw9BJqEPNrRwuP+lZZ
         99OO9AGf2iFrn9Nn0Jja5OwjmEzEfy9onMfLY8u78gNhBTU02IqE/sXAgvriNARFo+a0
         rGXw==
X-Forwarded-Encrypted: i=1; AJvYcCUMxZxLKoiD/PnVxJOyPikOdh7XDz6IdJ5y9dzVgTdD12HfMKt47sGty6FixSQXtibzQNe693dF50g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7KjY+zNGcgsBeOJVnfFyJxsI8Fk23muntDJHHmv+pAtpHJmpd
	+DcAlvDK+lv25837FWD0pdx72mbdX1gz1hTTgVGcWMGo9/M6VKUp5eIxsa+A5t4WeTwq4PMk2x5
	EM8ISb5w/eVvIbFndex/xIXesERDhHCbrIg1zBBexeJF7JymNHN3Ce1PSZlXkYDaHS7zj
X-Gm-Gg: AY/fxX4yqdzw4SVJ6Kw4WaXRxiEREcLp8vvA0n3kIkZ4gU2ygxMdeVyEuIdo3HeVAsY
	mPsIlXQXTZE7czzeNuF17GRUiqE0Dq/scMM5dys9UVVNJypLH76GeoIXR+vKz03+dkP+mxZJ9HY
	JyXXIgQordTEuEDs9HKZeZtQaBSSEBesASImauXsG6dquCbJSDco8QtAp9z9xY8NJkTxWQXHz7k
	Y33v9Do4De8NKDpCvlbzUEKNhZsaJxwgp1PNsn8MUCbiSrRjItldl1tX7Ei6jNe86LoyQ3WKQA5
	osF/NfiAkPhJmpYZDc/NvW9AJcOh6vWeUzG6WRn4uazbPvZ4BaA/YQ0NHFs+Yk1brRdixDI/Xy1
	Al41W/1bPqV8Qx5tnUAxbm5+pPC13JBJsBXd22eSMZ8Ob
X-Received: by 2002:a17:903:19c8:b0:2a3:1b33:ae30 with SMTP id d9443c01a7336-2a3ee4a653cmr68655945ad.51.1767943275031;
        Thu, 08 Jan 2026 23:21:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmX85K7l00KBW1kA6f3TQ3NMAR6fIywTS9QpDPhMAiF3kY9dOi0NzcCSQ3m6cZ6XwkDmcefw==
X-Received: by 2002:a17:903:19c8:b0:2a3:1b33:ae30 with SMTP id d9443c01a7336-2a3ee4a653cmr68655745ad.51.1767943274505;
        Thu, 08 Jan 2026 23:21:14 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm9510369b3a.30.2026.01.08.23.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 23:21:14 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH 0/5] PCI: qcom: Add link retention support
Date: Fri, 09 Jan 2026 12:51:05 +0530
Message-Id: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGGsYGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwND3ZzMvOz4otSSxMw83TRDC0NjA3NLE/NUEyWgjoKi1LTMCrBp0bG
 1tQDBpc5xXQAAAA==
X-Change-ID: 20251001-link_retain-f181307947e4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767943270; l=2484;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=2iLTHGWWp4AzJ7oli8atcmBSsHfhHA2O0yBWHWcnRNs=;
 b=ieJv0ul7NIphohRIMQNN6yUm+5gKS7whPVUUZtuXY2TeKz3puKJwi0QVvzHH5JsVCQwJ30t9W
 nWs5yjR+ZeRBqwJ15FQLxGnQ+FCMeD5fWD3NrNzUS04gRCgUgnsQ7eN
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=GN8F0+NK c=1 sm=1 tr=0 ts=6960ac6b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gKsALX6-UOwXnLYYSJMA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: mR6jdR-G6TJhAwpHnTT-d54pqF9cZRs5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA1MCBTYWx0ZWRfX42qGh/0KBCK5
 Ea//zDoJyFOKhXjfW80c9VPDm/Bn2oCqj+7ZmO/LuNmh+n2dqivz/UprQIgqQhJ0Djx8I4Y0Uyk
 3gqvSoOYVvIbkntbsicqeBVLa+u0y5qxXmkeXqLNKsP1wMwZbcpT5PJT3j/19M/D1dvLig9zbsT
 DwJqLGJaBp6s6Yda5lEhmn06q7IEd0Q8rIQ2jPKaVjAOPA0Lxpoon3Aoj5V3FeFE/kRk3fvdT7a
 OHTSdLGoQg0mL2c1Y4OpwHKq9/2n4mU6SQagJ9tg5/g6Wo6QOL/JYIafmC+3IAMuSfbDzPhoF6f
 2kic3rIQmCBFg0RFjziwLSUJikhS7T3XfJus5KQVPtT81PCshXcnZsESHklNSiG/TMS9TXa/oow
 emcN9NSki8KJe1KXlZo2YTUuBgZAfZmbAC02zM88c9mjdfo0fQVC3wHjKatkLEmiZHyKJEaNp3U
 YoMWXJApJPKM/oLjPiw==
X-Proofpoint-ORIG-GUID: mR6jdR-G6TJhAwpHnTT-d54pqF9cZRs5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_232120_606387_7474EB61 
X-CRM114-Status: GOOD (  16.45  )
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

This patch series introduces support for retaining the PCIe link across
bootloader and kernel handoff on Qualcomm platforms, specifically
X1E80100. The goal is to reduce boot time and avoid unnecessary link
reinitialization  when the link is already up.

We are not enabling link retantion support for all the targets, as there
is no guarantee that the bootloader on all targets has initialized the
PCIe link in max supported speed. So we are enabling for hamoa & glymur
target only for now based on the config flag.

If the link is up and has link_retain is set to true in the
ithe driver config data then enable retain logic in the controller.

In phy as we already have skip init logic, the phy patch uses same
assumption that if there is phy no csr and bootloader has done the init
then driver can skip resetting the phy when phy status indicates it is
up.

Problem:-
1) As part of late init calls of clock & GENPD(for power domains) the
framework is disabling all the unvoted resources by that time and also
there is no sync state to keep them enabled till the probe is completed.
Due to dependencies with regulators and phy, qcom pcie probe is happening
after late init which is causing the resources(clocks & power domains) to
be off which causes the link to go down. To avoid this we need to use these
two kernel command line arguments (clk_ignore_unused & pd_ignore_unused)
to skip disabling clocks and gendp power domains as part of late init
for initial version. Once it is resolved we can avoid those kernel command
line arguments.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
Krishna Chaitanya Chundru (5):
      phy: qcom: qmp-pcie: Skip PHY reset if already up
      PCI: dwc: Add support for retaining link during host init
      PCI: qcom: Keep PERST# GPIO state as-is during probe
      PCI: qcom: Add link retention support
      PCI: qcom: enable Link retain logic for Hamoa

 drivers/pci/controller/dwc/pcie-designware-host.c | 11 ++--
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 drivers/pci/controller/dwc/pcie-qcom.c            | 62 ++++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c          | 28 ++++++----
 4 files changed, 83 insertions(+), 19 deletions(-)
---
base-commit: fc065cadc7ed048bedbb23cb6b7c4475198f431c
change-id: 20251001-link_retain-f181307947e4

Best regards,
-- 
Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
