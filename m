Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDE6606D81D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 06:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=31/15qPw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=eaD9UBMA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=X/bbtzbV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=I8PKjrKuHPEFtW0gX9XWkXF55Yzc56TtdZV2CMnb5BA=; b=31/15qPwHPphIokF7MK/3bkKBA
	wodh+U8tz/qCWALh3hxDZW2iBGEiJM/xXYRVd7LRRZUOYG1+LG5zpsWU/6wpCTyW4eZbe0rToOoWi
	PAxiq4cOLxvwfSLoD3YmFcKKatR4gMOL8cM+PdIX2NE4yuAlBV6+RrxbjwI/86nd0edeU7rmX6a7K
	xmN6vx1WbS5ZCE/3hKrdlkv8ibMt4jr8Lse/erSRH8VRR6KjAUKTVx9puB0UaizU/nLetmXcV3q6i
	VVS/oid3/mwXXKEPky/c0BJwExH217zJHtXy5WZ2AV6C7k/AjNEc+g9Mf4zu3W03HSwtWhU1QFdOY
	EGFo8uJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDmw-0000000BNYm-2y7s;
	Fri, 06 Nov 2026 06:51:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDmu-0000000BNYP-39Ai
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 06:51:01 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A63xvrC2264772
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 06:51:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FgTaumbkJseV8Cy+AMTmURdrUUaRe7Y1v1tbBJFyumQ=; b=eaD9UBMAJSVOeRHv
	67OKVKTURwH+iv7egpQZoCg5G3IHE7svYA9zTwuWAMBk2L8ieDGEQnyNDBRieRT8
	e/0L7AvJgHxui7qK/WTCwNpYQfYw9ZwBPBJlfnY2cLYjujLqQuYEi7zvubKFvEPY
	U66nqGI4vlO/vEwfZXqM1N3U8Ak8obddu3W1Ol7EjBHZyF/l7P74qh8BfeTpVJzY
	bGP90fmouxQCKsUedjwT3THlU+b1RiqUE2GLgh/9EFfBvRzet5e2W3BCSz+LMJUS
	r07rfw5NJTBIRRd8QG66cI89PIXu0evuHwVfS4tEwMOWRbR5wO9uhZa+28HihK2p
	SepOiw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9hdye-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 06:51:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3b0e00d7cc2so328855a91.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 22:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793947859; x=1794552659; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FgTaumbkJseV8Cy+AMTmURdrUUaRe7Y1v1tbBJFyumQ=;
        b=X/bbtzbVA3e5jmaOv5UMHRN3BwMJBd7IMGMbkodt4Flkr5llaoVbcuTnzmQ+/cRAer
         bqt0sWYfAwt9LEoobre+2jVr4bNhE3SA+g2Svx2WR/fHoexFITq29wUmwHwzlWJwKX28
         ow7YJUuy76o0N9XfK9DsX0NHS9x3Fx6gRNH+mJrWLky3diwOcq4aDmtsrWE7MaBqB3Wg
         s5ZZyTHAkvL8p3++nQlHj8Jt8cBfxzeTgJXz1d2b8xZ5ddHz7GKY6/bUkikis1L3Sb54
         BMKMBtjEMvmCDRLAjydjt11vVP4TdqD7afytS6R4249YU4qieokgp3eK/6hcarW0IP0S
         ICZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793947859; x=1794552659;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FgTaumbkJseV8Cy+AMTmURdrUUaRe7Y1v1tbBJFyumQ=;
        b=mbfGuxple60vFFLY26LTLpoD+guGYiK4358reTA8PC7DEtUmLpGyVy1h63QjQvKOHQ
         ABP4t/iHxBOL31lTz0SkZBZqIpyGGSlOW6RfI/8Gcb7R2h7loLoIyYaiem9tvrtNHVg/
         QqGkKNNN8TLQ+dwwNj9I7Qs6b8/JviY0mWZk3cP4o3ybE6KSOxqAd9GlWHItnRQAmnHd
         inZuEVuVazs2RAXW3M89i5PgjDQuZPXjTrFFmnKmMEPAGyyo6CCf+COBi7rKVA0Id381
         KX2O5IMuLnvEOkp5nt/mpOrcGR/fLDBtZo8YlucFL2T6aDnaE8ZMHmanvL3SXsqqB/+X
         89sQ==
X-Forwarded-Encrypted: i=1; AL+hErET5lMtq/76OgoZChVaLwnN5M6jVq1u8vRAaJFNgYl4okYxRyZe4iGHnQso/kx3b6uC9Billc2S+rs=@lists.infradead.org
X-Gm-Message-State: APuU4Z/YCCZXY5JGipWO4ujSHnUEnvpfwGHikpcdjVZuuQk194MZAS4W
	xkgxvPBzdgLMwVR9uZCK0M83QzmTSObEeuXhVQlFQLWyj/S6juqPQw6CFD3fKlOTRTf2k26Akac
	Dh1CYb050DPmP+mYcvQ99I5I2B76Y3xtGI4vXaKADGZ+189BOAbrCW89azHm3y05VluyD
X-Gm-Gg: AYBFou38Tjh9QsN0Q/wgy7k73w7jQwifPN/FxFG9Fgrsk8XnmZ8MfWGGxXEjQLiDz9k
	IfSomEdtD+Z2M6a66unWHi6T2VtAsuC7yhMGPsuMTPVxU/vpZkaaN2oBn8oN8bkjbn32uZZVIS8
	G3z8fjhqrDjHrU57pijlqSJpXh2Vja0vsvtmCFIVJGJW9oOlocMwBcIGOZ38shmJ/bWU0FmfUVU
	MOpPT9NePjm0YMDMaBM87us8j6xsZUxpLgLN/gZ4R8NjN0ZiTbxwtE20yCFwc3KxfqV6WsRSeem
	RYLtzdBi1wKKg+5I3u1nvWvNNecK7aC9KSu7rHEcGOb1/RhZBSGMxxJ6jQ/U4zq36HmYH5opUwP
	+yLmJns4mzg3P6keB9TwMOqcIvajsFABUNDJIa5XinEYZjJUoNHkoZZCcMa2uLhsBrX/snCQh2y
	gl02mY
X-Received: by 2002:a17:90b:48c6:b0:3ad:47ce:3876 with SMTP id 98e67ed59e1d1-3b0db71a865mr1318381a91.61.1793947859438;
        Thu, 05 Nov 2026 22:50:59 -0800 (PST)
X-Received: by 2002:a17:90b:48c6:b0:3ad:47ce:3876 with SMTP id 98e67ed59e1d1-3b0db71a865mr1318343a91.61.1793947858870;
        Thu, 05 Nov 2026 22:50:58 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0b313c0dcsm6597274a91.1.2026.11.05.22.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 22:50:58 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 06 Nov 2026 12:20:42 +0530
Subject: [PATCH v4 1/6] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-hawi-maili-camss-v4-1-d528c7a797b4@oss.qualcomm.com>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
In-Reply-To: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793947844; l=1414;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=Of5la7TwZQ/Mgddi78WKNJ7A1AYscECPq7KHX0+sZaY=;
 b=oc0WJiOjPuecbdNW1PjeNotzAGfBEPLfXzNtndxTCk2cf10DpBvORLSkKxuww98qe+zxAI9A8
 lfekXCGU7PsCp9YWcgzQ1PxbW4ejGV5eowPCbBGqQ/1I2hpLJV7nV60
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: 0_OZ5hSkjAMTi60gUA9CRcDgchLjKnFM
X-Proofpoint-GUID: 0_OZ5hSkjAMTi60gUA9CRcDgchLjKnFM
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfX2osHGB545vUv
 GNwWYFJI1ES+rT2VUpv2WxRzYHQa1Vel2AM2l/rjuf+hGOE14L0BiZ4w3dGohERRogqOkIi/c63
 mH6iE7t9ZN2mr5QrGbNu5y5bvHAc+Ro=
X-Authority-Analysis: v=2.4 cv=XvNvqlF9 c=1 sm=1 tr=0 ts=6aed78d4 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=AartCDbB9JJyHY4DVtoA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAyNyBTYWx0ZWRfXyKcwb1DYXASn
 A01hz1xLN6bHLe85ZCXMrZCriiFCMqV7WBAKlbgqIJltEYVKm4EzllWoyRnN9gGoc6Zh3/Zffdj
 HX7cPW29W4npeXePEVey2u+/cyC0LsFe2OgpPE6KtCXjTAoHZmhRXyJas+EaRP3Y4PplchHgOBD
 9+0DQi2BQHkcxze8UC0XilBBB6fnDb3guKEqJIetP+VQF/r/ndCsMsrx4Mj7NZ33Xm25NCufYbM
 4e1DO69lO6tgRGC+WixqdhQqVMXCj8pKW/9gTeWJ5K4iajEqL57agmHIN9CeWhwLsl84n6XE0OA
 jUG0r2oZk6fw/lS0du9LCqCHZ2Zq3pRQ6oyX/+YiySjsMzg2xk7MdHUStCJTZcoJEZw+Gb8kR54
 XA/ff5GR7COtdCWTRmTcJNWuQnH3ojAd9FACxAco6yPQPuU25eNr3OeMWKUxTehxqzBMIS9kWIC
 k9zO5x5oDer3/1bS18g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_01,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_225100_809921_2D7D504C 
X-CRM114-Status: GOOD (  11.06  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Document the Camera Control Interface (CCI) compatible for the Qualcomm
Hawi platform. Like other recent platforms it requires two clocks, so
add it to the corresponding clocks constraint as well.

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 1e8def25ec0ec1ef6b34859709d10a2a36fe36f5..b2b4d4bcf780792515ec153c873bace1764fb3e3 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -27,6 +27,7 @@ properties:
       - items:
           - enum:
               - qcom,glymur-cci
+              - qcom,hawi-cci
               - qcom,kaanapali-cci
               - qcom,milos-cci
               - qcom,qcm2290-cci
@@ -137,6 +138,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-cci
+              - qcom,hawi-cci
               - qcom,kaanapali-cci
               - qcom,qcm2290-cci
               - qcom,qcs8300-cci

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
