Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D91DACA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 11:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3q1H40+lxN/MC/qGnSdFo2+O5ts1ooyUHCGrOejfhk=; b=uU7torECKN12W6
	evuIgll+hW3vizuPeV8e3bfqWyktC4CPnMcG+fqwDfCvJtRSYH3+8hiZ9MwTzI5Mjuko/s2w46+gC
	XX5yE1IX3jIkQP9GSa+iPf4qwnf+ONL3qZoKV2z7FOqHLizI3QOJCPwh7WgtxGva2vpFIPxiYjD6g
	fmqdKHSCQuXMhdjtEltD52waVAcJrhi1EizpMc4PPZnvIxHdvEVsdm89O3f70/Bu4ffz+PLH2ikx5
	cPqbWpP+ropFIjxHYfm6l5gROQ+c5DcvTiedmdkk8PQbltOYVsu6ISloV6nTwpstmwpvndYRqhx2P
	7bggPumPCwcVJ6PYKvKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaI2-0000000Cf0k-2J72;
	Tue, 13 Oct 2026 11:03:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGaI0-0000000Cezp-0mkN
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 11:03:25 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D94642483087
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LtSfTBfPvgBFmUK6LTNNqXLD4BtNlVBQw/rcqNOcjZc=; b=KeMJFX0kOatnNNVa
	MR1x2mQNi2NW7WkywQtt7dYEs+IxiD/5YLvZrkf4xKmjufruNI79P6AkpfNxw5o8
	4DCB5pZSl2PCh6MQ4mOpoUU+HIOg9AKOT1l9l4Sh/aayaDrR835+fFCWP8Er/8Fh
	tJem1aomKGZWqPnNBsCifloxOkyDBXb5ykTNb9KhKkLAw/QyckMHUHJFhTvA5Ziy
	Xmv+Sqji8Ld8XrQKENKmzZH8vacyKZLdz05qFAeG1tIurhMKx9XmXLJ2fVAiibdR
	PCVDNU2pnRl1kPwD8Lsnw/lalF+VS+838+UAea5qZ0/PJlixNyyZK/3TuHcE+FGY
	RnDJpQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9hpg8gsx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 11:03:22 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3a8af172664so2285757a91.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 04:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791889402; x=1792494202; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LtSfTBfPvgBFmUK6LTNNqXLD4BtNlVBQw/rcqNOcjZc=;
        b=kn0KFONLyCQ8ZP8JD1KjSID46x1liQ0KQy8dM9gns4dDwffYkiUuBl9S5Dnmp5yWKT
         Ggacn4EE2wBJ2yqsWHXFe56n+csYAKPXQKqsYY9rHIABsnix9GpfE72c74XR0PrRawr3
         i7qeUaSS7JdJjakp2zKTarwkeCHiLLL2apDjvxVT7YnG2PitQ3qojVcl9oECyH8EgdEo
         G/x///EmTd2pVf2EyrrbnxWkZFUGIoYg2dUo97EAJiUQAfFhVqR/ApIN9Up13499a5XF
         Or+2O1O5CgZjiFUD91oxByaNkFs6LOtoS/PSKEj4EDgSy5bEDctOXhtVqaBjI6hH4Yvd
         Br2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791889402; x=1792494202;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LtSfTBfPvgBFmUK6LTNNqXLD4BtNlVBQw/rcqNOcjZc=;
        b=ecer9f1iXjUdGUWaMHJQdHL9oxEGNwKD2ojhaaGHD9CuoZZxIXTFQljh6M+QYL2suA
         kTbFF0d95XKnzXwglq45PQhYD+ZRtFpsPZuZ6nDdfUqIre+j0Kf4ILrb+SYPv4SOJz+p
         a/gs0PGGATwmyTYV7Yfi7QdsgNoqb01F5ZqVy917FCM8OE6ZcnyrjhhPKmfng/2SPy/v
         qLJlALGEE61P3U1sXXd2GBOBH9LEIXwHDln7jfjtaqXMZ7Ts2bYNCNX16BnuGB6tH5so
         1YzRqUCAZG20lnLDr4xrtztNC39AGz9+Z7u888OMDt8YzOaSqV1Lbfs0SVG4pMklER08
         HQsw==
X-Forwarded-Encrypted: i=1; AKwUvBx98Q23ljLYcZFxqKYrNgJESh7Ycyc+mKFuin+m3tUJQWlxlxhZaDJ4Gi2Qd56Xk56Deoh6Y/NRIdo=@lists.infradead.org
X-Gm-Message-State: AFq9FYKlTB/I85tlm1RafCvz/IX+Byph65j1J57oqzKDS3JT6MvWRlBH
	8u/GXSFkgWRAgJ8Hqb2YgAk4o267kr4zmxG99QOHv2A+9m3Z4J0buejiprvhNIDV9nujRbrP8yP
	aYZzZo5BQfw8FFMXQQ9mafwRIu7/uRAjnXDOn3E7liGXcTG9ZW1iwW8QdOaGU3vb+KGGV
X-Gm-Gg: AYBFou2w1ZIkk2oAeOYJkXG5SZ+XU8Dj5k8PCHKB53fP+rP+LwYY0ncxrJ68+eGmprn
	2uMGxxVNqaNDDQwQmzroRb6zzm5lrItFJ8ZxR/WktQ6YeCWUXe1nfMtJagPuRdVkXVd8CvpBOpU
	PXyswcQZckGlv8JSMdXAqTWcQ/sAOSvbWUrv7n5FNbNdHdFDf3RGdxqRvKI3WUqdblL+Jt1xYxi
	LXq3UfAgklMhq88oJg/kGtieeqEOwpieblPJGtGrxsbs861zxk17jJ99b4Bxd6aShCINzlGkKrg
	pvKMDvXReU49QB9G2kfJO+6YlZL7e6FY8dk/UysX5FRrSJV8t7gueXfHhgKzCLVneJOVXDfGvtS
	mEZM1+tKwo68Xp8dEd8YzpEC1FLaVZoQ=
X-Received: by 2002:a17:90b:2d0b:b0:3a7:e11c:4e6e with SMTP id 98e67ed59e1d1-3ab3a97a71dmr10334209a91.59.1791889401708;
        Tue, 13 Oct 2026 04:03:21 -0700 (PDT)
X-Received: by 2002:a17:90b:2d0b:b0:3a7:e11c:4e6e with SMTP id 98e67ed59e1d1-3ab3a97a71dmr10334174a91.59.1791889401201;
        Tue, 13 Oct 2026 04:03:21 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab36f46dfesm20808403a91.8.2026.10.13.04.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 04:03:20 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 16:32:43 +0530
Subject: [PATCH v2 1/8] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
MIME-Version: 1.0
Message-Id: <20261013-hawi-maili-camss-v2-1-fc93222da89c@oss.qualcomm.com>
References: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
In-Reply-To: <20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com>
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
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791889386; l=1282;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=I9K6dqyuKuWaYIMstHojoCWyhkP+UlD/jEvqS2r1WK4=;
 b=8YII1P3PnyStkJ3yIPaipRsaz3g2sfipTKT8WUkWQB0EgSS5eWTJ9efEApHRdonVuFArRSO07
 EImqYcDSA8KCtWE90rSryewi4jddCvdM/NK6EHJYdpsJ3F+GGPRiy7e
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: FYCjmWHlg9BW9h_G4tBEQrVoyAn50qu0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX3TfkYnXxtjsl
 4ksi9qs608qPrj9e5nRcHVEaQbrwsmEZ0ovMsminYuSwynJF/5JqPIRLJdTCuRq4GsWeVYfb5ZD
 K1rTWL02oG1pF++1bKlWO95N5azh2Rw=
X-Proofpoint-ORIG-GUID: FYCjmWHlg9BW9h_G4tBEQrVoyAn50qu0
X-Authority-Analysis: v=2.4 cv=Z4Z5j3RA c=1 sm=1 tr=0 ts=6ace0ffa cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=phzA4CzYhpZqrDFsW3YA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MyBTYWx0ZWRfX3fdvlIo8gsbn
 ggn/a8dWob0uTKgDmMiJ0ZxZl5vrfqqeNpDDKJZyFqz+wbyZfazVWGRgelBSF21eh1ZIkQON9hK
 EgiKxXWHDbk+fA26nVTiMLDxDN2oxffdsce+aN79n22uwpHTQvGTGz9UH/KbwVxrsDt/nTJOzUm
 V9V8Rm2tdmmabBRfZxxfppTfFxrLX6y2p1F2mAVWnJ2aLQRHdCHS9VADalYjh512JWGPmEb3eFL
 cuJbhqlpWFSuO8zjJqNaOiJECcv7Mivsa1oYgXFqVvP22FbFaZ9z4lc55PAG3tBWGmFubHvQZxK
 EPxtTK1baMje+O8dyMRn7Ay+gbSYlecWBSZvUI14jXbtVxMBzOEAncIxDj1LcsBrWKs8+aSKkVp
 pCOBpM3XQ748dFwpeO+zdRznnPCdnSm9RFSR5DWM7jLrbW8L6HzZ4WZsIc/4SVl7rgpGIALv9fz
 pPsxBTZiA55kblPIviA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_040324_355534_206AC995 
X-CRM114-Status: GOOD (  11.49  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Document the Camera Control Interface (CCI) compatible for the Qualcomm
Hawi platform. Like other recent platforms it requires two clocks, so
add it to the corresponding clocks constraint as well.

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
