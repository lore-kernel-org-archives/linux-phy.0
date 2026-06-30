Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 518EBC43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HYtOFkC7ybGF7dMlI9c0w97bojC/urlERANg4+s9is=; b=wOs56jleMRq7px
	S09nOk5W2V5tdEVcZltQXh3bO737EJZ/ELCIrA8Y8dsH5dEsySYWGQPJbzCCWqMjewXd6fJp3Vzkp
	2Qfvq2tTOPgueIUYShBNH+su+8oU/2e4KuBFKw5UNrWp4Cfpeb9M+QvqVuanzOCzhgOkL/QQPTudV
	s/5l/n26EdZFksLD8RovwtkmkMWEMkZcWpOl90vQ1pK9o2bOj2T7SwYsdf427yQwJveat/SP8zIl8
	yMpD8tsVAN2p6BSky48CiFNjVQUD4uARfrdtnynClRxa2O1gfrTPoJEesdm3to4+WewdtMpJRhiYi
	/7BsB12U7nDK796yzL/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedk2-000000005DT-3euq;
	Tue, 30 Jun 2026 19:03:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedjy-000000005Cv-2vn7
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:03:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHklAP2723889
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FR5VWdYyPP97YYCxGcdgj/3+qyFVzAQu966AQXL308=; b=R1iXZhg9haY6dm/S
	2F39eu4ii4yyDRtTNPemOjRDf69aWTMnvRIIejfqUATWkEd9EEA0B2kRgSfL7QQR
	RPqXr7eAqaKlK9WpfVV7noyzy/Qg+JjMLELH5gTm/P9/1D649+q7Pm/HdCPyLJ4w
	r81nuKMODFhFYaeSDbp6nhUotDke3RY7kbdisBNVesbuzpl+neBO5+4JAMNOJC9Q
	0rypCDuDh1Ak6G9LOM0OHBFfywAwo4ccijxp1NnFbqkwNO/RTKDrv/JQsoW4eCWQ
	G71krNoJWJC4qgbtisuTBnB8SHcrbZSGOqruUwhbZR0uVBAj2ef+fpCsskxzbPXR
	Mb8alQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4avpts4n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:25 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30c0a27ad86so675949eec.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846204; x=1783451004; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6FR5VWdYyPP97YYCxGcdgj/3+qyFVzAQu966AQXL308=;
        b=MBUkqLRVeItEwYgGx/7xVL6RVHA34RRzB87hS/2TCuDmAZ3FamaXiQPSKqjE+FUjnA
         R20q2k1RdXJyH3y0GBW/rtaQ9IDH0DLZHqZdcBL3g6Op6refFxSKx3rR7f4Ue4EUsgkn
         QDANyAMRdPpeXtBM5CFYohPLkJ8PzfiFiYmQ9aXJqWIbr0EM6OheyyBPaxA1tSuBnzun
         idU2Moye6OEhlQtUHiZL0dC7VaUNeA5lJKuWcjSFMQqoOtbcvV0mOWtqDmrcwNSn2C5v
         lNuhzE47GpgqGdeapDPkXUHRZhwu30HUEGYSKLtZF+M/vYbCCY+Foo5AErNbITcO+N1h
         RogA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846204; x=1783451004;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6FR5VWdYyPP97YYCxGcdgj/3+qyFVzAQu966AQXL308=;
        b=Jh0jeZr6VUKTCpoxUWMHVaSx+dsYXwZA4GZOJftvTXjR9c6P4DcrWS4DKnBm3hgfL+
         R6c4juFKVJNe/FSHOF8VdPrx7u5Q0UmZKXA+syFPoMnczW3uV9gUCiADORHNnPtCMZAa
         Abi70MbwYuIkq8mUP/X+ZwiaGptuJBkOab1hxVDJNWUrCfVrbmuVqwVLIn5xERgURsGM
         dJZmdUhDgskM1C/01QZebOWJnFJCorRZIPSR8JybfOUaHRGp8RQwy+aBNicLhc+anaEo
         +sTKAkZQq9Es1Jy7p9/P9Gps4qS0w6NMCC+I4doXS6+dphXR5vi/a6Iw/c5oW4p7fcO5
         wxfg==
X-Forwarded-Encrypted: i=1; AHgh+Rra8nZLAt1+TNZRV13R1yEZsAjYcncY9/+uC6hn8ipJ4Guq32d8Q/Mo5dCz6AjG9Dw2RQH0tsd+9+g=@lists.infradead.org
X-Gm-Message-State: AOJu0YyC1Sa5xYBHRiRWC/f6/AlIQOKuRx7jB+DbDlL2yWSHk0b588TA
	78m5JVzCBCCoNCA2s/jLtLjcbiUKZHwsMPzej21AaBxXk7ciEX3qFP8FQzBvH9kWSM8Dv4cTqaT
	YjthMpCADSxUWAZom3cdZxQkV8ajsnHWveVQbIn/rWsiyGjt3q1Q9fMJeQJa6TcMupkHQ
X-Gm-Gg: AfdE7ckRfpLAvI+8dCwnnzzVIAFoikw33QhlRS+eMojOejCsO17TNTRKwhqwWitJQcn
	Pa9CaMOhCyiKOLNIXi5EvbNulfcxu+RCXFCqW9tMJLcgvVRXm0R3ALPtPD7JAnFCLycd9+UOw9K
	cYX/Bv62ZNYqhIDqKLtqEh/92qFsX/WASQT3tpK8+vLh0CbMmyXKpyj5cljAdS9wZzDMbs3rZH6
	nIn2XtwMClZ2P/jEKc9MFbmE1RU7K1kWbt/6yXK98CX7a1CDi8UUUXHtrKf2uTN+0pNemV1Tr3E
	4/OYxcGYReDiN8Oh84wvX4iV9r/H+qX/vgSK47ftIufGxhIYtY902Tj+TlHCCJdDa+yjdkbN41S
	4cojmFeedAZS0CfENH9plnZIkJ/bNjmGlk3pkccGBJLm3Z/0=
X-Received: by 2002:a05:7300:1824:b0:30e:da5b:2725 with SMTP id 5a478bee46e88-30ee12c0a42mr3649112eec.6.1782846204232;
        Tue, 30 Jun 2026 12:03:24 -0700 (PDT)
X-Received: by 2002:a05:7300:1824:b0:30e:da5b:2725 with SMTP id 5a478bee46e88-30ee12c0a42mr3649064eec.6.1782846203728;
        Tue, 30 Jun 2026 12:03:23 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:23 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:43 +0530
Subject: [PATCH 1/9] dt-bindings: phy: sc8280xp-qmp-pcie: Document Shikra
 PCIe phy
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-1-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=1298;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=Idyt7VPiLOMUneagHN9PxugOsJessHhJSGZC2obkP8E=;
 b=uqjVKoeHK8WWuWX600D37o+uFPkHhRKB/ccwAF+sT33TdNNRkCWATn1i6vmYcLafrBzb9pTBf
 Cv8UhUYEmfRC2ptExN9cTlfzWDtzTDysF/b39BoFm1OhlzFicTx4WmQ
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-GUID: mMrLGwdjKXHJftKnCmReK4b8EN6Ggsa2
X-Authority-Analysis: v=2.4 cv=KqJ9H2WN c=1 sm=1 tr=0 ts=6a4412fd cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=EF49ANZLUTmcXe5zpi4A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfXz0cyzFZqQMwe
 1ZZIqF70OXgoVYBQ/gaKQt7aNZjiL6gRB8oMTjoHJUCz5s6wcezrlJw8UriwofjokHCF2lcPyyy
 SSg2KLHsUNgumOBcjM8cCGVWIJKqfPw1lVHzX+3vJqZGsB/D5LLdxs/h2rnjQCb3NTnWZsrg100
 jccJJWCv/Cu/gOrMEUspOE7jLH4lh4WRLdkOSEGqKHLKogS7EsczIQsEhSuD4GcTSUbSVHhTe81
 LZo0p9dRSiXKwTiNPuWLnj51vdF77BFb0iF5bxzAdb9CikQ6r90P8qFT3DAMs/xAfQiU7jogn/n
 UiksxhyB+R2NAzKaC3VdPsBpmtp5y0sgneAbh+HWyDrCV8oT1LClNh+8iR3k3Frm7TUa2IflkB3
 Mefyhvb70tBgVYpFD/RHdOji0bkPu8ujh5KtDx/Q3P7yk3xopCKvvFs7o1s6dcSw2famMTmGM0O
 NBjI1sugARfl/+mAKEA==
X-Proofpoint-ORIG-GUID: mMrLGwdjKXHJftKnCmReK4b8EN6Ggsa2
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX+7jhJmFiBL2g
 y5yV6OdStr13+zFWYJgLt/GLSr++KpEM1OoVDv4x44/aixd8kHcSCeqaq+aiTqeXk+LRqKWKR2g
 MGbaI9b8c1UusoC2P8wc6jHIDosM5y8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1011 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120326_862652_73B5C867 
X-CRM114-Status: GOOD (  10.75  )
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

Document the compatible of the Shikra PCIe phy which supports
Gen2x1.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 108cf9dc86ea..b9b0fa26347b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx65-qmp-gen4x2-pcie-phy
+      - qcom,shikra-qmp-gen2x1-pcie-phy
       - qcom,sm8150-qmp-gen3x1-pcie-phy
       - qcom,sm8150-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-gen3x1-pcie-phy
@@ -166,6 +167,7 @@ allOf:
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
+              - qcom,shikra-qmp-gen2x1-pcie-phy
               - qcom,sm8150-qmp-gen3x1-pcie-phy
               - qcom,sm8150-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-gen3x1-pcie-phy

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
