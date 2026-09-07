Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F126AC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gAR3RwnecbKqHpLE+mLv5oSl/mAUmLNaSM92zA7ppLI=; b=tPvzrcU9OQY4OO
	mD3aLY95KMU1maOcsyqsq1t/raI8mdZxjTiMnO9ZdQZC21GmotbK/gOyNPs7UMXBiye5lFlXDSH8z
	g4VdznRLV3PfnuusYQo16nsRJ6xShrZOd8cz/4+rWTgsJqImpPnn6YV9spsKifAesFP7GRh/lOYGf
	6LBoH8fpHdUtUPYlhp9Bt5CV9xqURBRnxV+10dR11o2qG++R9C98mQP2qarrliOUv0AHAN5cs/JYu
	83ALUStt/NAqg06HRIFi+tQXSp4zTeut4BR56w0K4bNqjS98McmEy5s3CqyeXo4ctZeRiAFXpvtjO
	B1SR01Dd9SG9F/AafE0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUJ-00000006Emw-2q7Q;
	Mon, 07 Sep 2026 08:13:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUH-00000006Ema-0zb3
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:13:58 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68777aSH2724317
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 08:13:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=iKZhBtC4xoReMl+ODu3+f4
	AYAN3pz02drrC1yYmG534=; b=kio9fiZPu65AWftNbSVpceSef6yf29QCmGAPGX
	wufKP6iDNfcecZe5LeRBsgRVNtC46T7qsb2cyfmc2PRJrFYL6S1Fo9kbeOG0MHU+
	VzfmNRiqW0ybbcPjVrPN0N4F/LpLhvXa92d//6NrAElUrmjo79vLn+nPsecIzrj3
	MaNzJDfy4buguaMJlGyfKd1Zg9U/C0agwJewIW0HtBX74IUVKc2v/XxlRGkSC4fK
	+o2VX1qGk3KMalDOmjPJsmKI5trgJkuvhHeKNSNhEIUFfe20RPQKBg7R4cv8cvdP
	X3DkyEHRs9CdL58rEYFwiDk969uRonT6NeYetNq56MRdRZFg==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghfxksn1q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:13:55 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-6b12ae7394cso4154921eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 01:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788768835; x=1789373635; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=iKZhBtC4xoReMl+ODu3+f4AYAN3pz02drrC1yYmG534=;
        b=Rq6o2XS5Q2NG6kau4me3HT9mqDI3LjG5ylUmNP0qWzk1C9RJaYgs3P5CaMYTjVm6bF
         gY2r+LjoWOsi2xt05R1jMTCe3icWLMMH3PUVnRRVocBJ8DI9Ib5N0g75+K5b27HFXy+U
         d1EA1V7KCegm6qMD1zm9NL/Mdy9QbQNoOpf15J/bkEkaujbI7x7Am4U6umpA3Aio+fxc
         xVAnWMrbWmhftMJuI1KHSdqC2ny240rMWNlMm9uawOOti8zPTLJgWXqKlEjt1LWoRViW
         k3YnOP4a3xoqlEWHFK4RrWGULheG8WFBit9DHp07+cdZBoMHZXZa0d6yTkr4FNtPncQa
         kNaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788768835; x=1789373635;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=iKZhBtC4xoReMl+ODu3+f4AYAN3pz02drrC1yYmG534=;
        b=lJx9qV1XnCU1OveLce9lztufzD8t0JFiZ5e4vE4RJAAjDTFnO5DbgEFPI45OGTFScO
         wnYJ+ptAfsROihHLzaXPunuYOZ/VP2RhUCuQF2kdx4nCxhsGfeqOR5tf5Ca5qN8srL6r
         F4CdtEvmHBwvVs9n53eH+e8AESO4VqLbjya0PNem153z6crtOen3X9GZeoZ/HgNJHAQ0
         du4nMXi/gIuUStujdtf8lrjqI/tUZGWBAQBTY/oGl0fTe5ZmRB3bw7BmDH7Rr0zmIRpS
         NYd2lsBKHKN1X1bnPvDk7k/CGd/uvSkfYgi/dtWp9WEEztD6UQrOLDvfLJa2ngjxNCPj
         DVhw==
X-Forwarded-Encrypted: i=1; AKwUvBxJQP5I2xCYvXpDXY4MKwJbKZfj1FWT+JLb7zjr0184q1rL/Eu0471PMmLy8rxhLXdxx51JVeYgpnY=@lists.infradead.org
X-Gm-Message-State: AFuF++nVxmH8/u4eHVynDKwWPmO9Ds3Q7Lj07VXOoed4TkcZZWJnIwfX
	nsDL/pLAX83tI85zARMcy2+WZB4xJ10kq70nZlaHlFyu5eZuV/ajSKvoQvygG13W2lI5uUOnDOu
	OU6hLVuEknHQG5Ymg0jHUYt5Wokuo0EKdIX57SByU2T6Rrjo4vE0tVlP/qCwEaHfJBugq
X-Gm-Gg: AYBFou1okDCc0eKxpwbKjmI8LUiDHhIpVCZGb/fWe3+W2U3wg2NqBjeWoR4XCqRlJWX
	Sur3fEeD6J6P+M4ZJOFM82+RHUqEYnTTIOXuogieCIh4oME/X/lvJ8WEe+hGbTTwHJ/ungNzsRC
	+qp5eZojYq6jNdLFnPeGSxHjsC+sIElfJw4Ss08BxArrOJ3b4AgMh8GyhcuXODUHkHKupwOAJRq
	TLfDbx2O41BN69EvzijnqOTr88L8tGumqUW9V3ersetainiJfjefUHsVlJ/HPXD43A8Ap4gpOjw
	uy0bmr4+wdt40+yuNhIYJ4r0jzay6k6SMN8oc7xMESM82CXXUCXwJhn6MBPNEQkugqJl9BO2Bpe
	rh4a3MqcNslsM37EeIvsziolSL0piP4s=
X-Received: by 2002:a4a:ec49:0:b0:6b8:d957:2803 with SMTP id 006d021491bc7-6b8d9572e0bmr6704629eaf.20.1788768834775;
        Mon, 07 Sep 2026 01:13:54 -0700 (PDT)
X-Received: by 2002:a4a:ec49:0:b0:6b8:d957:2803 with SMTP id 006d021491bc7-6b8d9572e0bmr6704610eaf.20.1788768834288;
        Mon, 07 Sep 2026 01:13:54 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-143243767e1sm21724220c88.6.2026.09.07.01.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 01:13:53 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v2 0/6] Add CAMSS support for Qualcomm Glymur
Date: Mon, 07 Sep 2026 13:43:36 +0530
Message-Id: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADBynmoC/22P3YqDMBBGX0VyvZEkajRSlr7HUpb8jDagpk1UK
 sV33xivFnoz8A18Z868UQBvIaA2eyMPqw3WTTGwrwzpu5x6wNbEjBhhnFRM4H7YxsX/ajmGgFk
 tu5oqagpToFh5eOjsK+F+bmf28FwidT6XSMkAWLtxtHObCVlqo0XVGFOLTnNdKEZURSUlBhTEh
 SSiA32gRwhBJp02uyQbQQr8opEWLMOP+4ZXWmOCGeeEd1JIUojrYCfpXe58/40OobsNs/Nbend
 lySixGsL/f7ayiIqnGWjQJXB6dSHkz0UOh3wexyF1dtmnbtlo1XBaNsJ86N72ff8De8lzDnwBA
 AA=
X-Change-ID: 20260529-glymur_camss-27af71b1d3d3
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Dhruvin Rajpura <drajpura@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788768826; l=3428;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=2PkCrrkmsu4vMoHSdZZ8ByoR89oUBJOzMlHa3i0gMqs=;
 b=9rJF2OhCoF4yzMGqRFpBhRxrc+m1Cgcpt1ZSFaxPjzplyHFawOMqlIngtIB3UeUTJ+XPQqVai
 BBLhERQOSfiCXHWG4EgyyEzTUQSfdQP6zW6VYNIIFDE0QeoM7B1Uxlr
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX2dKHvyppQHOj
 hOX4RfEhdpQ49IBDqguYzrnIeAQeW7P7yLqnIH3/0XkOU+v1pOknrZZhs5IzuOmt6HEbD6iwr7s
 iZVVyFj6/TrjIimpFw8dsxLFShMFnY8vr5Dbc75Oi6ghLe7PYwCs48EMYWknYvjTKQt3JCgl3uZ
 zvIXztJ/bZYlxfJ2AvrNzpUL8QvDcjhb6m6+P78KVh5lQxkWAxJa5r0RHtWdPfjcjZPHskl2cot
 qRD9b90MF09T16LZxPTrhXriWlkm0cIoBbYXGcwloxHJOlFxlMLmstERt2BKBU2h5cujiuqdCtH
 hC6P65ltLC9t3iqGwmrTL3m8kADRhusDNc+q3BCwHP6wOAXSAmMYZ4TKcbVU5El1tFFGI3iVqmq
 oX0mc88l65I9L69tJyf3aaIdYq0YvkKxa4kN2NvGxkhUKrcxzRuiq9saJLL7mXiiA2oOtS8DuuU
 5CSezKc7S2r5mlayhAQ==
X-Proofpoint-GUID: vFgDjwKHNjgXSg5WngBpdE4180hcs5dE
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX4kwa1hcsVq0x
 MveQsMsgYnpkZhblQauSYU035TADLVJbWJqkkP9uH9saAgGDw9Q575tP10i78zdtIq69AsXIK+w
 z34kZCNJZRrdpZdNf/NLxdR2jV5brbc=
X-Authority-Analysis: v=2.4 cv=daOwG3Xe c=1 sm=1 tr=0 ts=6a9e7243 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=0ARVRLQPdUDne_cnrioA:9
 a=QEXdDO2ut3YA:10 a=-UhsvdU3ccFDOXFxFb4l:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: vFgDjwKHNjgXSg5WngBpdE4180hcs5dE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_011357_399139_B4C7515A 
X-CRM114-Status: GOOD (  14.99  )
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

This series adds Camera Subsystem (CAMSS) support for the Qualcomm
Glymur SoC.

Glymur's camera hardware topology:
- 3x CSIPHY (CSI Physical Layer)
- 3x CSID + 2x CSID Lite (CSI Decoder)
- 3x TPG (Test Pattern Generator)
- 2x VFE + 2x VFE Lite (Video Front End)

The CSIPHY block is the same hardware version as x1e80100 (3ph-1-0),
differing only in instance count (3 vs 4). TPG, CSID, VFE, CSID wrapper,
and ICC resources are fully shared with x1e80100.

Used following tools for the sanity check of these changes.
- make -j32 W=1
- checkpatch.pl
- make DT_CHECKER_FLAGS=-m W=1 DT_SCHEMA_FILES=i2c/qcom,i2c-cci.yaml dt_binding_check
- make DT_CHECKER_FLAGS=-m DT_SCHEMA_FILES=media/qcom,glymur-camss.yaml dt_binding_check W=1

Patch 1 depends on the following dt-bindings series:
[1] https://lore.kernel.org/all/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org

Functional dependency:
[2] https://lore.kernel.org/all/20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org

Changes in v2:
- Glymur is now defined exclusively with the new PHY API architecture.
  CSIPHYs are standalone qcom,glymur-csi2-phy nodes falling back to
  qcom,x1e80100-csi2-phy. The CSIPHY supplies and register regions are
  removed from the CAMSS binding; they live in the PHY nodes.
- CAMSS_GLYMUR enum is dropped. Glymur wires directly to
  x1e80100_resources in the OF match table. The CSIPHY instance
  difference (3 vs 4) is expressed entirely in DT - Bryan
- The incomplete compatible + resource enumeration from v1 are collapsed
  into a single self-contained patch. The pointless VFE enum patch is
  dropped - Krzysztof, Bryan
- Add dt-bindings, MFD and regulator support for PM8010 I2C PMIC with
  qcom,pm8010-i2c compatible; qcom,pm8008 is not equivalent - Konrad
- Drop dt-bindings: i2c: qcom-cci: Document Glymur compatible; already picked
  by Andi Shyti into her i2c tree (now in linux-next as 7c9474bd4a8d)
- Link to v1: https://lore.kernel.org/all/20260529-glymur_camss-v1-0-bee535396d22@oss.qualcomm.com/

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
Dhruvin Rajpura (1):
      dt-bindings: mfd: pm8008: Add PM8010 I2C support

Jishnu Prakash (2):
      mfd: qcom-pm8008: Add support for PM8010 PMIC
      regulator: qcom-pm8008-regulator: Add support for PM8010 PMIC

Nihal Kumar Gupta (3):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Glymur compatible
      dt-bindings: media: qcom,glymur-camss: Add Glymur CAMSS
      media: qcom: camss: Add Glymur compatible

 .../bindings/media/qcom,glymur-camss.yaml          | 300 +++++++++++++++++++++
 .../devicetree/bindings/mfd/qcom,pm8008.yaml       |  14 +-
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   6 +-
 drivers/media/platform/qcom/camss/camss.c          |   1 +
 drivers/mfd/qcom-pm8008.c                          | 140 ++++++++--
 drivers/regulator/qcom-pm8008-regulator.c          | 184 +++++++++++--
 6 files changed, 583 insertions(+), 62 deletions(-)
---
base-commit: 9a4cdc958dd79fc6c3b20b51a10debec6ca09fec
change-id: 20260529-glymur_camss-27af71b1d3d3
prerequisite-message-id: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
prerequisite-patch-id: 4a27a90c3a55c1f9ef46e9b941576309242f75f8
prerequisite-patch-id: ec5e059c23defd7db6c47bb17d70d01c9c6cc31b

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
