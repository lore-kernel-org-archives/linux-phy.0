Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C485B60A2600
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WIiRND5s;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=ZNmtI40X;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ZhvahsI4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Fu7r8OR3RbUQgH6k53grMsjYRTdCUn4W0JXpBfNCrac=; b=WIiRND5skR7eZxlRuQb7a6d4B6
	Hru34KeWnPNCaUCbMqnvltMlafgukug+Loj1MdSgoKqaiUymKrFRm0bl7RXyHfUoZqtxA9sHrTljS
	nPRSQbLqhLKtm3qPm4FsyqbTHUMK9CQVfRW2xmcmHgDh6DrChTEt6XQXALsZCVs5YSPGbttvQWyYz
	12BWfMnm1tgKqgrDWvTGAbAXoQaHx6iDxXAkDhc3sO/db2CD/BLXHsS7JikNPF7mt2Qs3lwc4r79I
	rDXpRYCfsAI0DX0f725VNSUT/azHd/ud9cLYuqDjtCp6nVu80Yt2nVxX7jhI+zK8hAjTgvpIfDYo3
	ecMcrVvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvE-0000000BhHu-2AQe;
	Fri, 13 Nov 2026 05:34:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvA-0000000BhGE-3MKs
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:33:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD579Bl1631352
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:33:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	czX+scCvulDqANj01Qk8R+CY26BGL/k2NFKRUq1N9R8=; b=ZNmtI40XUta6mwHm
	mh/qAmVhftZn/DZ7DEYWNJwDVyzXJj/AIxB8PBaOfRhN+Lj0JUDUig05+bkcCgib
	splyu9LROvBf8WJOCxWFDSElg7V/34r+QfFdwUh7hXcOyXqBh38JOYJRprbyp1kf
	dgY0ANkHPVx8FTwukEAcE0x76NajKU69gr1qrkv49oVXY0eA/Vie4Z0eEtd/ZXsj
	xsJzq3hD/GGGzN4aX7/fktwgM0R0lM7t+r4U/agZ0vUAIVRe5WrYTsrYK0TylbYK
	h0O3GOHIgeTydZveFR2WJLuvmdl6purKpUuRuxYrYQhszDkHl9XdAwd4eHmDKKMm
	a+CeRw==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw9e1c8f0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:33:55 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4ae40674bd0so389532fac.2
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548035; x=1795152835; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=czX+scCvulDqANj01Qk8R+CY26BGL/k2NFKRUq1N9R8=;
        b=ZhvahsI47Zab6hi7iRwVjGeYpHZS/C+tEv88x6MXcqcIgHcPLsZbPJ+tXKseK5jopA
         GxFNlCVkf0hSv3e8ZjzllMckSue8oIDhiwU58xaqEu1FX0gwpxm3Nq1domA8S6O3Zbz/
         HzV3DN5RMOD03CbWiaw4YXx8iE7MTwaROcLJtddSpaCSIaZqmG9nK+X/GPQBXS2py9dw
         P3faoMsIePKa6DBPQ6ZXdhAcXeQHVL3dLojMULm+pOJd/FJ6EyemNIraovesDoXQX/Zv
         gwX/9l1auySbwGRzet3fbKIE0J9crgFobfO98stCG3d6p5lWN5n/VSGX9Cq4pSRIRZOA
         kgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548035; x=1795152835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=czX+scCvulDqANj01Qk8R+CY26BGL/k2NFKRUq1N9R8=;
        b=CxgcJiKqbS8pNlMsRZacMD82CGm10/eVZ72MT9psTAUrzB3AgjMAtGafsfDAsjikbY
         Cpq6sL/UhdU7FdBkQOoWi7ZPzlMg9enaakEUfcvcme8M4tt580QjLgeQOfF8FUUQrMOX
         ky1nAKmsivuR3jbuN+B4SflkGIRwPydDV7amIxgf/VE7GhOLC5UYYxOP5fnHr9scMn32
         DEJ761YdeEy78tub9wIvxWdFMuVc202rvWf0K1VrhGYkyhOJ4y6hYqc5u2+iEBfySMJZ
         a/7Pg9CYbUMaPUWAXhkrlH1F0Mh5+MdFJ5ge3Sq0V4iyc+l306bQruR+aGN79n8XqlhI
         2JvQ==
X-Gm-Message-State: APuU4Z/ME7txYrOHaCTTjkbWMTnZma4liBIGN8qWnvYkb4bYlrWr02fs
	ZvwtoNai/Pu45kzj1jugJLtYWFHNNDg1KMkXkhyt6oeilhHNH1iiKZSgC3nyWTMpZQSwI0S7t1S
	G7zLZgtT9B/8u4XrbBqH4deWC9GKRmAdZFILCfHkoPgvsmLKgklwccRageLqQwYWyFDh4fD3Rwj
	VD
X-Gm-Gg: AYBFou0y4cGO38Q4zjRB8VYyNlpNb3QOfuUSoBa2WH5KLeePJ20JhErwY59t3k0+fAq
	/8/LaMPAQuU7uw37UrmYDL23HARpZR3G/ON+PrWRJgdcrf55DuQAGyuhJ9Z3DMdU1Mito7sXPrR
	t+M+ikWPBEyJoiPa4iv9Xe58s+Fg4Cqofch36WMz4XYHcEM39GWJGhhIpfoWkmT24vebNLD7+S3
	dNoQYPg/zyEg616KyjZzKsqufTb0WK4/k5HZWYl1vJ73F6Iw54GwH+/pb1AkcJlYGAaNrswvNkh
	2Aq440kuQaXB5Rw9cnPEhnTJjRiSu0KqiZdyJdzwXV+coOl02FzPaQxWK05cl2wZx8ZGeMlqRAJ
	zYFNbwixyq1D+lBlSrElMaWy7oSwO2vrEWL7f7/bHJtgRWv/4d/cJpST7tNya7AYcEiPkHNgRg0
	JvMEKbCYd/GFoRJV/BhXnq76lEPddzonGbPWv0zCZmPJgrkoQVDKxrlMP6LUVF
X-Received: by 2002:a05:6870:1d0b:b0:4a7:4323:3fe1 with SMTP id 586e51a60fabf-4afdf49d5b7mr1423596fac.20.1794548035173;
        Thu, 12 Nov 2026 21:33:55 -0800 (PST)
X-Received: by 2002:a05:6870:1d0b:b0:4a7:4323:3fe1 with SMTP id 586e51a60fabf-4afdf49d5b7mr1423571fac.20.1794548034659;
        Thu, 12 Nov 2026 21:33:54 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:33:54 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:33 -0800
Subject: [PATCH v25 01/15] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-1-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfXwkLelXxTeXZG
 M2Z/Jieg+g3YskogkUMnbn/CGJcv2r7Mwjzfc75GnvmSWYJZv/iVNZAe2lP4SOOOGTb3+4l9xc0
 PstfhnC1XnhcQMFkiievLN+enitX8h+DI6tZwCUfMCLfsZw4LeNRnsv/aJuOR1F3iMdUpZYH6fw
 +4lNYpt3N3rJCvoO3bClXd67rKsHh6AihSOmU/BUyvt6kpeTfvB3WlgLrSlQZ1KMOiJEyqZoVtv
 tqhSKvYJwEgNotf4RXFRmRrJvMXvfXnLDKXYSWZ7y2/jsFzEY3NzE0huFVzSd17fS3rmvx/jR34
 aeZAsSol73la5QOa5J6sX9ofdEmsaSfEnTccsqYCAaSbDycA7PIQTwNln6qFcSuIya/NV+JZVEh
 dyK5nOUNdrM8VfX5UWAmkmzQHDNbH58r97G8pLrnawoM/UjS/2Lcme4dum6ioOci3MGWt6exoP9
 Dapa7ajwpmF1JzgSY8Q==
X-Proofpoint-GUID: Np0LjrLB7XHwczdtdMq5RQn5bcyGdweY
X-Proofpoint-ORIG-GUID: Np0LjrLB7XHwczdtdMq5RQn5bcyGdweY
X-Authority-Analysis: v=2.4 cv=F6fC5ahN c=1 sm=1 tr=0 ts=6af6a143 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=quhYwmWePwexk_oO3l8A:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX1EmHizVgTTa8
 H5UPfWsCgK2QrSR7RcdvyUpXOB8Asmu3mdlP+4vX+gpjW9njGp6dXL2jf9Dv7DgnyrHKN5IcnS9
 RymcCQzA5uZFlt5XgQ/eQscBIseFJoI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213356_971147_7FCD4296 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add "qcom,kaanapali-csi2-phy" as a standalone compatible. Its common
status register offset differs from x1e80100, so it cannot fall back
to that compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..6e9eb8e265df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     oneOf:
-      - const: qcom,x1e80100-csi2-phy
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
