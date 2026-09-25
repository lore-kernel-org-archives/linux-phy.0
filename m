Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27A39C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 05:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBRKCFgAmW0TPSvvB8kfx7o/tI7kAHP+vuEen3OZwrw=; b=XEpERu1tFP2v0I
	AvEK6fnIcJWtqTKLrLPhUz8bzWnpG2hndvpLhDBobVQ7w4KxqHT4uCWLq+Ls4+oJ/GTvOrOwfANLW
	fVC6gfn3LuQg0XCo90eEHUhvrxUCzBvfRDazqdwYUfhadx3ijOo3i4GlwupfXr1FGKWWILUqtIkXQ
	za2ftBe1uIAbngmFX5v2Tn15TQVnSY3nyJIZ01XOxRmWj4Yz2vaYMWMoRcWS2QryAIq/VwQ1smsCD
	I2jcBoVF0nu5KThwYmpcffg8+d3d80KRPn2fZnfDObHh9Fu76tLPvHgWwsdfenzbN/OZ0OCn3WyHo
	Iz9ZWXVzMccKhV5arWOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ynw-0000000Cik3-1w07;
	Fri, 25 Sep 2026 05:49:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ynt-0000000CijW-3w0g
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 05:49:03 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P4YnG54102886
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EnZrBCS4to+L5xHvaUhf/5
	MW/QcwVf0mDlQuJ/K0HTs=; b=EORTa+fUyEMsb3cxYwtNXsD+DW17DTaXQAYZTG
	TtFBRrjF1/hOgRp3X9XkwESqdzNQcvtOA7M7XX/QBWgF2RolxL7/zpfgTthOnsA5
	l5EMXXSCRwiq1pUgpwc0umjFm6wv9RyXQ8VOMVzS6JaCalzRIy3E3bxnmw9Y0wJ1
	LgSXZXbsqII1Rb2HhLMBvu8QEr/9VEmQ8VduSstfFer4hR9+Of8GcUfl08bM4UPu
	d/1Jvb5kRHXoQQuifGPdN67PUlEJndrSa0N5HY/az/s47F4PJcbb6RvirMLLaJ5M
	8RZWMmG4ljWJXveQel63tnk1pR9jmGOLdeCHyKcrTANNGtdw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw5q8u1cs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:00 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-342138eeff2so28550eec.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 22:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790315339; x=1790920139; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=EnZrBCS4to+L5xHvaUhf/5MW/QcwVf0mDlQuJ/K0HTs=;
        b=U6wdEcBLVfc5X9xZaODVFdhZgRR5W5uHjir+A6RN0lUM6va9/JMh2JY2MOpJALdL4w
         Hivaf6IAb76H10Jrk27wXYP4E9ujXmVxoUK/1ESgNOo14dj6wbaxL0ie6ynN5h+bUu9Q
         pHq6FspPMfwb6rZLW8FLfn98Bf9s1SfS4dLkWSxNPoRduCqDfBORkvANebvbFTpUJZCI
         oCC3tcc/qKaWzox0OlqfFhcm2nY7HTFOlltPzmAOE9MuOBxYSIWsL6kkvDatmeO/brfD
         swP2a8SzkWcEJvJ96tnYDyMseYyGwGqi5KZ9VbQiVDaj1wseHrCB+gLz9Hkj2lYIw/pi
         3ntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790315339; x=1790920139;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=EnZrBCS4to+L5xHvaUhf/5MW/QcwVf0mDlQuJ/K0HTs=;
        b=WBpm4sPxIJIzx1ScY5c6J0xH3xjbxwp27RyOvMsKIZI3a37pnOzNcS5skKsyW9rtGF
         QWWSFJ9h1UWm0v9/M1xzcqWy4E9iFl5wCoD25VbBdT6odZmhdw5vDO9GxwpndpzYLkk5
         SukBgqK/c/0/bhkrRsZv/7uhnNxAmU5CyNjgco14CsICFWEAO44+d4iqiJ2lJN3eEVeT
         /yXBZCM3KnNT7hQSFLIkAodZs8U9hK37pBZE1R2roN71jFceY8eYrkpddHuopUKD4oEs
         wokRBGnwPkwiN3qeaSzHWVJPor4SwdDNTFlOdu1s+iby24zoFOGowyc/TanMNL9Rvwb9
         wUYw==
X-Forwarded-Encrypted: i=1; AKwUvByyQ7WWDSizivkBRPDoaCNfYoxioMzcb+ZyprXMp+Q6oY5bv2z3h0eJcftaqC42b4eSVWUNFacZGfk=@lists.infradead.org
X-Gm-Message-State: AFuF++mqT3C1DuAPWJRvoZMJIdrm/rWOoAT97xsg0uVKY3nXU1G/X3ga
	f6J3HmrRVTPyoV9Cm7CM4HOS91TgsdqrrKyT7DHVHFwINGe9qVmWX2xwm/J4H0BjdmEZ5zmMcHV
	di/nfalysqtZlP/gtVgCOSPt2qWe1iuoJ/fKojSYEmWDsHoJPNXX8ijVF5mOOle5/BqIb
X-Gm-Gg: AYBFou1qICHSCpGG/17/L2S+JGZtZ/jwVD5QetILQwWK9NA6D9FBAl+zqMunHzw/qDW
	G0osh6MsAlZjfhLtq1g0qj1rNTwiX4dYDQiEAoZFZ8q24g360GZLJgO0tCsSOUrL8/Rp3Xwjy86
	FwQG/ud/UiaMCBs8uyYsHRrCqtlT/PpbN+2gqD1aLYqXTQHtDBb+4PJDV0ZuuYMnWy+h+m4ZmJM
	Q8RWs179x05cCM+MzoSKc6hOyYHtpXTidgB2iXf+W0KFIGaQ2duyX6CZoY4AYNPF5S4RJNKhhsn
	a7oxSaSeBSnVQNPzpp7hRY6qCZXdueba20c8WDRBeKgsYRb0S+0D8lGRXsdBKovHTGZPTQGJt5Z
	6NoojQLQtSjH+hwKFc9dFNttrQmd7D44=
X-Received: by 2002:a05:7300:169b:b0:340:dca6:f34e with SMTP id 5a478bee46e88-340dca6f75fmr2322397eec.40.1790315339140;
        Thu, 24 Sep 2026 22:48:59 -0700 (PDT)
X-Received: by 2002:a05:7300:169b:b0:340:dca6:f34e with SMTP id 5a478bee46e88-340dca6f75fmr2322352eec.40.1790315338423;
        Thu, 24 Sep 2026 22:48:58 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34144757747sm4033640eec.13.2026.09.24.22.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 22:48:58 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v4 0/3] Add CAMSS support for Qualcomm Glymur
Date: Fri, 25 Sep 2026 11:18:44 +0530
Message-Id: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADwLtmoC/32Qy2rDMBBFfyVoXQd5JOvRVf+jlCKNRokgjhvLN
 g3B/17ZXpS2ppuBO3DOXOnBMvWJMns+PFhPU8qpu5Ygnw4Mz+56oiqFkhlwULwBW50u93bs39G
 1OVegXdS1r4MIghXko6eYPlfd69uWe7qNxTpsS+Zdpgq7tk1DuYLQCIfSg/UGFaKKgaKJFoKMD
 gMpICW8ZYvrnPLQ9fe16QSrbC1luPpZaoKKV5EQCAklqfqly/l4G91luXssY6m6sbDHSoPeqFo
 aG/5hLdc7rG6itgYCWiP+sss7JvHd3da/HaI46sCp/IB2AWjHMc/zF2Pau7i3AQAA
X-Change-ID: 20260529-glymur_camss-27af71b1d3d3
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790315331; l=2996;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=2VQKFd9S+is1roxFQ2w3VjF1z5t1br3J1sxIby+fveE=;
 b=m0Wwg465FszVHMiIt0GbOcmtk+4RQ3vKtD9RDrgPA3MFHtnlK3JdD5ggPD7tf3PHBHKHiMlFq
 XWQ9oEemIcyDOAUQrafQNFbdRbp+63O/Z02hAqB88wMqt8XUUr0R4e0
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfX+I5cjB5v9WRf
 1iD3AM9JPBq+LpWLlY1kTccmgNiHaAghqabBCbFV6r+ZDBUyOW0VrxfwIEVQnqOLtqE90WBZ7yS
 1namnImXNu3L8OawVBNPMiz5vMw3OZc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfX7AnM9JWRjW+v
 4h/qAuf9IkcoJJPpLcEbCEST/VgJGw78yempyI8nwDDEKv54fqaOafs5NbB7JYZZXnBf2STf03w
 x4gvLcVTZA5HPoTTHbNfEDgBF05RSoNxgFNCYlGggSJndbCTT0WG0WkWRzfEVKEzH1qMGz72+M6
 PpWmoe8/Zk4gp93EGSrS9Tzobam6MgycenyFGQZOXaEty8SeelDXBtz22Biznnn5zQarKMo5N4z
 /w/kzItvihm06iCi4JPnHA3rU6NMPULE1zRvA54p3oSOtegvPzhAT1UtDob4pAQj3XbqCfukjdn
 UJ3Tfda+XlMRUdiup129MEYOgoxe6UORBtaUZpa8EywS1uRmzICRy2BJMKRVWiboWF2GT2RzDWl
 RO7dqehEllGte1sFnEPgGkYYga2nxV6oN7ngYS3wMasyUzzdsQcOIhFLsVM4guCD6I9Mxq7Z62a
 Ickg5NqZS2BLt5591dA==
X-Authority-Analysis: v=2.4 cv=SYRi5fRu c=1 sm=1 tr=0 ts=6ab60b4c cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=u22DmsK4ZUPFP8xnqCcA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: dqpgm4Yh501BNSdGscAPpMg5vR1bjhcZ
X-Proofpoint-ORIG-GUID: dqpgm4Yh501BNSdGscAPpMg5vR1bjhcZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609250023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_224902_104149_4A740DE3 
X-CRM114-Status: GOOD (  15.17  )
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

---
Changes in v4:
- Rebase on top of linux-next (20260924)
- Drop dependency merged in linux-next
- Collected Krzysztof Reviewed-By
- Link to v3: https://lore.kernel.org/r/20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com

Changes in v3:
- Dropped PMIC changes; will be submitted as a separate series
- Dropped Hamoa from commit log - Bryan
- Collected Bryan Reviewed-By
- Link to v2: https://lore.kernel.org/r/20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com

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
Nihal Kumar Gupta (3):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Glymur compatible
      dt-bindings: media: qcom,glymur-camss: Add Glymur CAMSS
      media: qcom: camss: Add Glymur compatible

 .../bindings/media/qcom,glymur-camss.yaml          | 300 +++++++++++++++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   6 +-
 drivers/media/platform/qcom/camss/camss.c          |   1 +
 3 files changed, 306 insertions(+), 1 deletion(-)
---
base-commit: 4c253ac4b29b8c6cc6fdef8f92d4facde62e63b9
change-id: 20260529-glymur_camss-27af71b1d3d3

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
