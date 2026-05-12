Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A992CD37AC
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 04:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cZem9KLr0hAuHyROo+mQc70EBcapfFrgs0iHYf4t6tI=; b=IArrxvCLH1aiOb
	lDQJ/IHMzv50WtUsUVI4S+jG+Y4D2qyjFoQxsYy6IjF6dCaKpZNroyv/30EgkDwPBQlf/xaLaLLzp
	crT8OVKJRFAdTCoP4RvoHqTVHvrYbrDWKvxGScBZWG+05tHJpQeTsY6gxze56QSWWfdkHOAIEu+Hm
	K2ENoa4YewZMoANNUzMYsSDpapZXg3A+0+NmLfpnC4fUTtt6GzhJD1SpKUcxTDYTsKlE62WWim4x2
	Of3BSJJ8194Pnz8OmJ+BGTQputcLhc8UwusMjpIrv4pYliRIPdBp6pysB60ENsHrnf8hVaqs4wZRR
	9Yx8AavmjqPt3uo3s3dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQA-0000000FRBc-3Ixn;
	Tue, 12 May 2026 04:08:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeQ8-0000000FRB8-0DcM
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 04:08:37 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64BK7BEN2804751
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Rd1E+u+bedvehaMv+PHJC4
	fcSrBbt21nM9G/UBz0nPw=; b=VLMvUSyeQ3rb9EXTPdeW9jyTM4fVJ9pZrJqssD
	nbJplBVBJ/LyHInMhhHZ34ioAcJwUrDLEXRm3b7Jo64YMHqDZ+8b5e3XUNCts1Yi
	a9bwC+qL0YZ6BYQywZvanjIlEqOpkUTo2xCm41LoYrq/AFBMbWi9QOKqTBOC7d8u
	CMIEN40FCURtd6L6KlMsDey/oHqNSiGoZ80IK6zYBUybQcUdvJtnDlEVu+SqDdqi
	6WqLiA/1CUgoUiOdit4c4cXXio9PBBtp3JzHx7t85RT0s7ikbB5Rusd4l6MjR+fo
	pQJ9MGZJOKd3DOe+SW6wRx9IHbgfrIf48P/zyVdCExh1c8OQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e3nv39e1n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 04:08:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ba838d3fa4so55375075ad.3
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 21:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778558913; x=1779163713; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rd1E+u+bedvehaMv+PHJC4fcSrBbt21nM9G/UBz0nPw=;
        b=FZ9U4PX2nXXWyXick365iCTGyuZ9AL+q2Kr80I5DCTfWPSyRnFDQkEVkJmSutJUJtF
         lV6yUVQJRaSImcI3fFlOoOUSFqcfCShpwOl2jFOzx6ApPcaV59ezUt+Co1f7bFaUi3Yx
         jFowBTjhfIUiEEXOmCpwjt5c9kQJknaf4d7UBXNivSPcBt8442M1HEYkxInuyhKvCGY1
         8O92HbjX6LnZ9yrjkoaPBmOCZGIJUOysNKErYCYFelrzajEDLTOIB4yhAtKo7BKQVgIF
         NJ1BZDw9u7IXuy26s1ETXNvKRq/qsgsGcJVSx6tcdLACP80H9iuonAuICPPj2QCvS4Q0
         +MaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778558913; x=1779163713;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rd1E+u+bedvehaMv+PHJC4fcSrBbt21nM9G/UBz0nPw=;
        b=dGOoVrDNN/jG20YWRJVqjI5TCG7fO60XIrkTmphUIp1pOol2E6f2YK2xtmii4mQtCL
         GyWxR0ul7VMaMGuLg8qkGFvcrTMEBqJyykr4bLjulw/JItJWAjF+Sg6WQgqFIc7VoxVt
         t70OGZvD96YCyrbaq+WX4pchnfVnV7rs7/XE9gaovuTBM907YAYgHmYqs6RyRl8m1/Am
         HM+URdmkXqk4Imnl9C+2pZ6WfMrIIbQ9MWNng3dm7P8PAORVJ7my6qtUMjHubV3jNARO
         14Eok6P7FhyLBiGVj+PgrStq9wssZXqeAbWdTnchBOUr1FQ4VBRbCKcnUEYBOTMEl5X6
         PKjw==
X-Forwarded-Encrypted: i=1; AFNElJ9MnrCNvaxYh8sT1Q0Ak1Nf7stQ7MjptOsUtENCmPfmsxia0Kc3bMJZGJDIjWAztbJQhyvu4Gis5+4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwupBDfo3UmBWgXtULZAjW47tP44ms46mrDdt3F5zULYwoET43p
	uuVFFQDBfkANiNGalpWgreq9frj0PfSZE8j31vaMnKbluYUEC4re6hzfdwrXT5fzTvgEuUVuKvu
	uAdkcL5DSqJ6pqxFHWn2eTGlBxzHIw0dMUYIp/nft2wgZgRhoNF1sJqMVdTQx2V+z5mcM
X-Gm-Gg: Acq92OGCVFSCCT4RbDmvbKutb4vBIBjk+RjR3CZDHGD042FjKwpuO/XXi0/XrXbvccX
	6LuYC2XvddFbbP6jGMzbuQQabUgUki+50gB/3rscTL5lEbf4a1KBdLqboHzvOVG/fYV8/L9b6UB
	EGKEUGk6CXNrWPhYTmx7tYpI8yO+p3zyKvtBQHNB7670scYvVbs5y0yOQ2uNRzJVCRm5x9/T4fm
	hSZRkMlIuQIv8TZPJKHYcM/XA5uioPjfaCPHivA16911he9yKoPKYbxG3xiYIOVvFg9CBlr/FxN
	k+nN3LlMQmCaSVPdXOZdVlEC7KwOoCFVRogJHYwQv71qU7QStCrZN5xCb1NtVF/i+gNqZ3dbAMh
	CbHtMQhiPifLCjudNHetteELJ2Vp4s6bOZidd
X-Received: by 2002:a17:903:289:b0:2bc:7eee:200d with SMTP id d9443c01a7336-2bc7eee20c3mr130044495ad.33.1778558913288;
        Mon, 11 May 2026 21:08:33 -0700 (PDT)
X-Received: by 2002:a17:903:289:b0:2bc:7eee:200d with SMTP id d9443c01a7336-2bc7eee20c3mr130043915ad.33.1778558912667;
        Mon, 11 May 2026 21:08:32 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d405adsm122646725ad.28.2026.05.11.21.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 21:08:32 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH 0/4] arm64: dts: qcom: Add initial device tree support for
 Shikra
Date: Tue, 12 May 2026 09:38:03 +0530
Message-Id: <20260512-shikra-dt-v1-0-716438330dd0@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKSnAmoC/42T22rjMBCGXyX4emV0lp2rfY+lGJ0mEbFsR7Kzh
 dJ3XzVn2LrtjWDEfP+M5h+9Vdmn4HO13bxVyZ9CDuNQAvJrU9m9HnYeBVfiimIqsSAE5X04JI3
 cjJwSrlVccMllVfKn5CG8nrX+vFzi5I9LkZwvlw/F7easx2l705vCYOfUI3CKaCO9dRK2J1Y99
 3GlGMVXqgvWIkPAeuCCUOpWiI862rluig0RuEt+t/R6HlNGmikGgnnDm1KOfAWnKU6uu7YLQjW
 KGQpa2S+4a/autFnwctr+kBHFLfcOAJjB2xP9FGb3N0YdejO+dno499BdUouK8wp841vJb5OKP
 mf9LCMwJwpL0da0oYJRRNAhhbwfdH1Ykp70HH6POdfHRfd2jLEux6oQF4rgmgpFyxr8UGj9XSj
 HuCATBheGHVLGg+fCW6B6bZ4PNEQf76hWxrSOApGOrqAC3/c222cSQIA2DsMPyNnmdEeLeUQ2r
 ee4Vd+jf924u6OMlc1xFnRD4Hv0CFMaHy1bKsvOkeI51iurIzC9wX3/8T9uI24YNZR7UPxW9xO
 bG4KJ4LxWTDKiis1xHIrPtd0vg076f5Nf3t//AQSo1x5FBAAA
X-Change-ID: 20260511-shikra-dt-d75d97454646
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>,
        Xueyao An <xueyao.an@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778558905; l=4319;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=kqP7cS9MWJQk4SwABtNVCsRBxc/cDldsdq63dxndWoI=;
 b=xnYAwPQZNvI8hno1y4enJ0vASb+aefg/M4t4rAphz3RULxjOkXgFmX7yYO+EcW/3mWeiSJkLx
 +0jCaB7tZuTA9U5snyHskrQvnoZZzcmBPNAKGxJT8FwE4iAnLWCUEVr
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEyMDAzNSBTYWx0ZWRfX/TYvnGEkl5bg
 elVZIhIqnc07s5aj6ccdyjZq83D+5pnRhs4RIuU5XP0jTgFwpPJQctgKw+KChnnZdoWIvZCYQY9
 QgAy861TwCsAhYdz5kS3VCPvZw3gDGO/Qj1bS1TNT5r1xLxUqzcCRSUGGwjq3rT9u4o0IMDLgPn
 YHBo9nsG0FW/coC/kUOw5PrkBIB0rpo3Jcxq1MN/dd4Vj7WxbfbI2XKFXOeqILCK3ESBSfqeiKt
 CvweCv44LmWJqI2oOee5CqVyt6+3UXBbHZ9bcjTSZVAMmZvXgCShDNWfgTgaCfNV3QF5yAEpp5c
 5cn+bXv/rIQtik2ewlsGP3KYqYOl5Bi8xw8vmTnia5bt38Cmzy7br1EpkGW+tJ2H/Iq+EWuCDYX
 gLnHRdID6rFKLrXoqXMppnYKP/pxQ4jJIIdyQ6Z4HNuwxtJeB9LW19SRjCnQovV/uTk0yxUBDZK
 ocFyBHyqz9ixbOfYiqw==
X-Authority-Analysis: v=2.4 cv=Kvp9H2WN c=1 sm=1 tr=0 ts=6a02a7c2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=uX85a7QtwIfg7uBTYAUA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: hygmFg-0NhnmNS8K0SVhBU85fhBsU7Nl
X-Proofpoint-GUID: hygmFg-0NhnmNS8K0SVhBU85fhBsU7Nl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605120035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_210836_263174_E5DF6B7C 
X-CRM114-Status: UNSURE (   9.51  )
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

Add initial device tree support for the Qualcomm Shikra SoC.
Shikra ships in a SoM form factor; this series covers the CQM variant
and its two EVK boards.
The series adds:
- dt-bindings for the CQM SoM variant and its two EVK boards
- SoC base DTSI
- CQM SoM DTSI with PM4125 PMIC regulator definitions
- EVK DTS files enabling UART, USB, and eMMC on the carrier board

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

---
Komal Bajaj (4):
      dt-bindings: arm: qcom: Document Shikra and its EVK boards
      arm64: dts: qcom: Introduce Shikra SoC base dtsi
      arm64: dts: qcom: Add Shikra CQM SoM platform
      arm64: dts: qcom: Add Shikra CQM and CQS EVK boards

 Documentation/devicetree/bindings/arm/qcom.yaml |   7 +
 arch/arm64/boot/dts/qcom/Makefile               |   2 +
 arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts     |  61 ++
 arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi    | 112 +++
 arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts     |  61 ++
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi        |  13 +
 arch/arm64/boot/dts/qcom/shikra.dtsi            | 966 ++++++++++++++++++++++++
 7 files changed, 1222 insertions(+)
---
base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
change-id: 20260511-shikra-dt-d75d97454646
prerequisite-change-id: 20260429-shikra-pinctrl-fd71ab6ecd6f:v3
prerequisite-patch-id: d84e0b4c2788ab6cfcefc9806e7a6011eef8f91d
prerequisite-patch-id: b173720338ac515e3c89ab2c96d7b1b9ff99540a
prerequisite-change-id: 20260320-shikra_icc-b1fcef45122d:v3
prerequisite-patch-id: d36ec191324b7992a56c463a15ff09bacd8d7ba1
prerequisite-patch-id: c6edf2e05d1409667c9674b765dbd0917401a903
prerequisite-change-id: 20260429-add_pm8150_regulators-a373f53eb48f:v1
prerequisite-patch-id: b312905695c635bf1e3deab87b718c92adf07f54
prerequisite-patch-id: 390dee07914f18c7df08c57b3c59c25d1588b62f
prerequisite-change-id: 20260429-add_rpmpd_shikra-f57873b2fa7c:v1
prerequisite-patch-id: 2aab0b42cafb535b31c5154002c12f381a52be9a
prerequisite-patch-id: 491f7ab91ee90ebe98d78f7a9d706208ad74be5c
prerequisite-change-id: 20260429-shikra-gcc-rpmcc-clks-2094edfff3b0:v2
prerequisite-patch-id: 5a0fbdd458785da2d0e850c851a05046672ecadf
prerequisite-patch-id: 1f98e515a52bbeb25e2a960a804afe16c6a472a1
prerequisite-patch-id: a64476b2ba6e0f2a55928baf72ec32672ee0123c
prerequisite-patch-id: d0c8651205232862b40f942929e1efdaa3084eb3
prerequisite-change-id: 20260430-shikra_mailbox_and_rpm_changes-2de7fe8e964f:v3
prerequisite-patch-id: e80ea7940b9817449cec21afa6e9e443e007166f
prerequisite-patch-id: 2526e0507d3b5c065eafd75a657d7f903af8488f
prerequisite-patch-id: c3b7e18cd60d1f779b88ace2fae1227d3d37d83e
prerequisite-message-id: 20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com
prerequisite-patch-id: 0cbcb69abbbf83da785619c266c96af624c38a87
prerequisite-patch-id: 047b2e1c1db0a5928b951a3f0bc9b0416032cb2b
prerequisite-patch-id: 6126fcda921fe53b86b3a18c649fd8ff2e1f43d8
prerequisite-patch-id: 8d1bc1ee4b4c1009a953bda66e849198d9e16352
prerequisite-message-id: 20260504145710.257211-1-krishna.kurapati@oss.qualcomm.com
prerequisite-patch-id: 2d2cba33f2dfbb05b620484e9c46eb31306fa72d
prerequisite-change-id: 20260430-shikra-smmu-binding-7befe45ecf2a:v1
prerequisite-patch-id: 657d2fa91247aa0c222b595c41328087f04f01a2
prerequisite-change-id: 20260430-shikra-imem-binding-a7bb9d2f16d2:v1
prerequisite-patch-id: 80d8ab865b7b0663c5b2878b45b55e2e4fde9c19
prerequisite-change-id: 20260501-shikra-scm-binding-a7ff5fabd0f2:v1
prerequisite-patch-id: 8e645e1c6ad6182de4813a726c293654324de1df
prerequisite-change-id: 20260501-shikra-tcsr-binding-fff1689e4097:v1
prerequisite-patch-id: f6781d2cf0829ccb32f1400623c95739972f2ee2
prerequisite-change-id: 20260501-shikra-wdog-binding-33873dcfa81f:v1
prerequisite-patch-id: de5184831054bcb48889fca16b2f4b5e95da9935
prerequisite-change-id: 20260501-shikra-qfprom-binding-c262fa19640a:v2
prerequisite-patch-id: f284f0dc01674ea0a78c8cf40ada72a7a1636463
prerequisite-change-id: 20260502-shikra-llcc-binding-7832b24ef74f:v1
prerequisite-patch-id: b9e53d2b5b494d4a957a691340fb2563f3dd681c
prerequisite-message-id: 20260508101544.736317-1-monish.chunara@oss.qualcomm.com
prerequisite-patch-id: 2a9d88175f19bfdb9495a704681ff0093da5566c

Best regards,
-- 
Komal Bajaj <komal.bajaj@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
