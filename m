Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2D0CD6E61
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jun 2026 17:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXEhIAsOlmeemTKijd33tv0irMhpSHEJthKpGxHE5uM=; b=Y4RBy0bqHs5BC+
	pF8QDmJ7/hBey4bYWUSBA2faaQGuZ3HAStpaX3B8cDzDe5ais9PFLYgm6aRdzETmSvlRF4W1TvDYu
	fJ4+6TuN9vApTQKoZkwSoQHb46qcioRySahineiGXhT6nzv7YlEgcPM0UyLItLQcHeru1jLPsI919
	4C3aYrCveMpSCJdMefzbc7a/hOhdO+KjZSw+Ao2azC/P4TKiScOxUHVducJ5BuDs707tKRb8YF8qI
	1VBI7yEt7bFKzSU3/p8aIWPYGKRbn8TilScZcOC5s8WSR0dqHwJNjfghQC7Pen/MDz/YCRThBBEnD
	hmGomypPvNedYl09OEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6TZ-0000000Ba6o-0Bbe;
	Mon, 01 Jun 2026 17:30:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6TX-0000000Ba5s-0pDl
	for linux-phy@lists.infradead.org;
	Mon, 01 Jun 2026 17:30:56 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 651G5SSL3372613
	for <linux-phy@lists.infradead.org>; Mon, 1 Jun 2026 17:30:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wVm4TdG5n8U+Jqzsg6ytMrzaYYKYP9UWAt7EIHGxQss=; b=CkhQyHZdGEBq93G+
	F+4LsLU7U3kU9GOaCii62iiYuleaUcKScBEsMd2EUdp+zua5G7oRDwJlpYwb8aYx
	R9EToc4ZAPD/eSF7SMEo9N1eDKvavn/Jvitp/gw2W4fXcTUeTKwROq0UcV+8b44U
	aQfK+rt/hNXmzZrfIPpHAgDHVxi6gJbYqcvwbcLG9HyCzM686vR8ROeFTWGolFxQ
	u9CMWAVmhPzlgKuw115/x5CoQKJYiyrOn59iYqJnoo0ynXM5ZY/RmJ78X9iVpcfd
	Ur3DiX9XjIhs5TUnUanyUEKwHtFkeRD29WC6URQ7mMrWU2S3w19xuLKb1s9ULjLk
	mImkXA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eh7jha0r2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 01 Jun 2026 17:30:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2c0bf6904a6so31362185ad.1
        for <linux-phy@lists.infradead.org>; Mon, 01 Jun 2026 10:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780335054; x=1780939854; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wVm4TdG5n8U+Jqzsg6ytMrzaYYKYP9UWAt7EIHGxQss=;
        b=M6sM9b64MEqi9wT7Apx4RprVe0T85TIx1XdwoCeB6D3E3B0tnIgekf8YzfGLa7MQdJ
         OlO9xMPM3ka1dCz+8rLoHH1SPbEvXvogk2QytMDlc+IWFa/JL6p8WtM9M2MjooWpsKzB
         fZ3XVue7TXwsLew/tZXKJijSqb4IZ06c/Ejug8sA5lkqfTJc3vpUuKWNYFDsac4osNbY
         vOHw3vXSqj/y263zfF9sPMoEeSqQzQVjPjwR1LbaUOs/pR/4P7i7hrgnj4Vy3xxcXggO
         hjiRbjSUp4OlSS+J1nii1OdygnJU7seQ0oB+yMzZdbVggddbFRa3Q+aUwB9gLa8g6kVd
         njyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780335054; x=1780939854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wVm4TdG5n8U+Jqzsg6ytMrzaYYKYP9UWAt7EIHGxQss=;
        b=M+h3fQdadUjOPU290GEUFg29k2l0RAcTG6cgcUxBSmxZ3jwGJhj2ZyDgvwvjjhumPL
         FMfLik5cq/e1qoR6XYpzu/V9+NYX0j5wm7vat1mE2o1wU6fVtZUIIiHpAzrNJ9czKxR1
         KkoMG6lenblq+foOmwdFZpjNJs3zCguFmkOltsL0OjspapZ5jx0m31tDZ1eZcWAcTZqn
         LXxGYXWd5YED3a2EnsiMFmW0tl5uO6KSDFZlIG+hy25GNxF+zwnSx17VViYoyqDlrWKO
         fA2ZwSRYiqqOyr88q9bCkYQzS50kBba3UWbVjufBxbIJs7Z6JxEVsSf3ldNcIaHRw4mG
         o+CA==
X-Forwarded-Encrypted: i=1; AFNElJ+ANzeKQnhX272vs/1Tlv6bWaemZJQS1VIjBHG5wYJcbi/ODsLRuSssog5/mDAz5TAqLpPI2RMWE+Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6GZ4mBDTl4QpwHS0WZ3IDwJu1PLmp9lluuyu7/d7Ygp/2pXp/
	DAisBTzwIoltipZz4Q/QBIECyC8jccKMfZ1O9qBC6sY5+QC28oo5HB0f8OZZWL8unlcNGTRyOpc
	rfDnd+cBAM/LhVEErG4ggahUgi6jEG4eqQpLkTWWaiSxAzfIbXlM1BJeTx0SsJwjPlehH
X-Gm-Gg: Acq92OHcBIKp9g9bagrV2N13DdEyXyRJ++k0FmOOK3L3DQay66Ku0rBcOmJV4NmWONt
	L2+T8ldeHSkAxuoSwWUIWkzNBCDdPt4aUxxz5T3euOZqLz2kfyOZCpTaBjJzNelqx8OiCO+aMVI
	KkUNez89rKXX3buV9+u6WBx+8HCq+WtnbBnWkeWAppIbG2Vgf/i2Br3ivrzs1Honuipz39wfOk+
	ePoMEfw0OAGBOv6jF3GTt8WidX+XdzL0ergJTmJelfpSwAaJm9VOYWWXWNggYaQ9GhmntFyCgLU
	x1Q7ysnEv5qgMltqacaaNkriEyRHff98zSpSMpZUmmcgaT07FMW74r329jCLSaPkRyabzwRr/Yo
	l/oGH5m8nRDtkfnP0OiZzMvPBmIkiz+UT3NFfz8/8EJ6k3mWjfOlW1OQj43z2CmOcDYo=
X-Received: by 2002:a17:903:2f05:b0:2bd:c925:3a16 with SMTP id d9443c01a7336-2bf367b1670mr141503385ad.2.1780335053963;
        Mon, 01 Jun 2026 10:30:53 -0700 (PDT)
X-Received: by 2002:a17:903:2f05:b0:2bd:c925:3a16 with SMTP id d9443c01a7336-2bf367b1670mr141502805ad.2.1780335053501;
        Mon, 01 Jun 2026 10:30:53 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23b011f7sm149136085ad.41.2026.06.01.10.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 10:30:53 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 01 Jun 2026 22:59:44 +0530
Subject: [PATCH v2 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Document Eliza
 PCIe phy
MIME-Version: 1.0
Message-Id: <20260601-eliza-v2-1-6b44c9c23d5e@oss.qualcomm.com>
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
In-Reply-To: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780335042; l=1706;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=xeSQHPitzN8ohDKs18l6esrdselqsjwFIBvIjhevBqI=;
 b=8TAw6i9HWaMl9TKddGR6bg7RHnpwPvMpNjH6kopEup+runXShivaFDIsfa7BjAa+eov0bpYQ1
 II6sIgMEXd1Bu/kukcd7mvNZ06W518oWDz9OnjtqH2oUbJ9YU6iA2qF
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: QR3IXw6Tp7A6I2Wr_RJaXhZsOVEcf03x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAxMDE3MyBTYWx0ZWRfX/zmDnvd0Baj/
 M7LKaJQYuro27U9AZh5Pkb6w/iI3gIBgL+OpvVq1bVVdkykmOscPYbmQ2hNzVWQBTPuF9vq2AyS
 tQlAxuirw5/tUs033NYI4JNkCtr1Fo1sUvkgWcCVQbRxD7wvR5UXyTpECIXrxjziXr2F4/8Fn/f
 KqfxUQceSchtnqNAYdelSHKrshEdOYdmEiOSGUETQk2KoSSDzYe/WsRxMneE7Bl6V+WsV+6r0pM
 jLRdTZlyM5bvc0hZqojf4Mlf25oqDkHXKplCKZOzIl03yopJ2bHWg06rNVGbX1vuLvXTnZJ+iM/
 QOLmn3nb/IozK6aAlmgHwUjeWj4VPwPDOxfC/yAh0zOvBGmZdAyi0mxFmSU/usGsMbXWvSM3ChW
 gUnATJb+Je8GsAssIL5pTR7ujQrCFnoERRoUG3vs/4Vev/G4lDPYvIVYHx0E+NceNM5OQvauJeE
 pgIvAgF3hxEY6h6rYKg==
X-Authority-Analysis: v=2.4 cv=YuY/gYYX c=1 sm=1 tr=0 ts=6a1dc1ce cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=d5_U1CTwwdyySJRbjq4A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: QR3IXw6Tp7A6I2Wr_RJaXhZsOVEcf03x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-01_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606010173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_103055_244474_BB3F3EA9 
X-CRM114-Status: GOOD (  10.05  )
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

Add compatibles for the Eliza PCIe QMP PHY's, which supports Gen3x1 and
Gen3x2 configurations.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..be4bbc327982 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,8 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,eliza-qmp-gen3x1-pcie-phy
+      - qcom,eliza-qmp-gen3x2-pcie-phy
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
@@ -181,6 +183,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-qmp-gen3x1-pcie-phy
+              - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -206,6 +210,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-qmp-gen3x1-pcie-phy
+              - qcom,eliza-qmp-gen3x2-pcie-phy
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
