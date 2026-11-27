Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F547606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=f+BitE5e;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=dBJS62rl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=P30gKtE9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qByS6Sh41u1tcGX/FSn5svZD3ziQFEUGQK9Kkv3Nzyk=; b=f+BitE5eqsaB2bF87rkyW6PH+6
	Uhwaw2FM9Djz8XzPt+UPfeaDl88D1DfkK54VhjR4uc7C0Va7iAW/nUbpVRUvrIr1HI+OkCBlSPYvm
	vtj7kfWj5K6BdvStjs9z84RReIUh/2bSpLyhKvhy/Wkw3E5Ym6IuEvriy3DzU8UPBQ9v4ejx5ZjdX
	C3fJrY9JEtUbK+Tonp9ZBt3VPjItJCCYIA3FVKPiQRXMOC6AaMfQ8h32dpzcpl9ZylHtrniNJHB/E
	DVU96/ZvybquUd6z93ovob+7dLB+AUA46clzUPhXqB4mjYaONDZhuNGmObDJkZ0mCknlmd918KDKy
	sHI+vI7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNK-0000000FsPr-0SVi;
	Fri, 27 Nov 2026 11:44:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNF-0000000FsOg-3GT8
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:44:21 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ARAp3jc1047059
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pmawXRSR283Ucc1PSnIiqX8eAjPfNtrwEJ7cQLdMyUA=; b=dBJS62rlsuED/DG1
	i78emq4hKj8H6+mhm64WNWUuIK6yv3k5Q+ImF+Rg1xgdvNYWi0PqHeCvH4O8JZgJ
	wnyeneyFKDJkmMOgbK2Wa9jgyPbn7KZePKZxmdvaayGeKvMyzIjCXpIahCEOLfua
	X58GM2BzgRtxltYL88RxBMUY5LAs9FgqM/zD/DQmEl1ggiL4NEJOJKkFewPr+v6I
	iB5moLuw6cO6naPdIrzRUkBVW6DqK4+SMLJCR7jv5j7qbHbOxYOaVIISZvi9+fFU
	/2m+QM28yWN8Xk4Pe//kqe0Gh+yR2CD4rKMr3AGZApUsK0NnGXq4v85QhfizMRSv
	E0875g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6pgqksky-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 11:44:17 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cde9044a96aso4587199a12.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 03:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795779857; x=1796384657; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pmawXRSR283Ucc1PSnIiqX8eAjPfNtrwEJ7cQLdMyUA=;
        b=P30gKtE9ISx90SniHsZtYFNB41aP5vPP7U2mGnyw/9qWHppmjtqaseA4ohQEKKYHG8
         3hiRHcPn8HG++SmNO3gYL4/I2CBXEqlmCYmA6ITU8zX0su46osRZea0l04nv6pWPgLGO
         2iAiXtoaswaCIKHnLuMEOOhAxdS+UAGryNJBOlGBwW6Weec3oYDMjPY9A7uT9Z/4BIhu
         4rmt8S6ZKqptjKBhF1vfEqu2zkVYx0vbSdEkIPlNXw9bCZfQKYI/g0MuxZr4kNLc+W4N
         Jczl/osthVyh/o9CTLkkDO2XEGUEKrSn9qKsYOF6R/eVeyVjjbMmOyBrjx333MQY2TP6
         rQbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795779857; x=1796384657;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pmawXRSR283Ucc1PSnIiqX8eAjPfNtrwEJ7cQLdMyUA=;
        b=E1uaaL+bvBKiN4xlqi5D5S+Ina1a2W4hQbEQwSgpMcawxFgo7u9NvBC7DjwX33VoA8
         XfEW5IsBpQMiBfJuJME6EQqWt9c8vDr4oYE/gHPOS/c6kTcU1EHyczotAzIRNTBgbTYC
         TLLMH7JgBpUhVbstwtlEGNoqnKS1QNvljO9Hc6vx3wu1s0FaJTQHUi4UvYORQkfs1RHl
         Tb39cWqa0caEZQJcLwB8AdRxhq1JXoZJUpPNy+OsuUseciU+QtJ+qqtRbDBJeCWKxV/V
         cfkG2+R34J3sOGDE+9bRpWD/wSz1XG1YTuBO2MWRo0WLIjl6UZWG8Jya31kEspm/dk8L
         IT0A==
X-Forwarded-Encrypted: i=1; AL+hErFYVvpkPwZHMNKhcqGdDky4RUblUjXDmhT6pnJg+6epo1OFYVCnQCwhl2MYQAo0BLXSgqxkMIeHlRA=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Uoh9turXvN36fjGuNkrtsNuiV2KVhI4XeQA0Mntbu3Ze2C54V
	E6XVSzYVGHFjsyXLf8g/oGFZolC0KUhjsmQXw8+eGTf7+IKWz8oP5Ih/o1sziKzfmdTRMMtPEzd
	Eh6NLdPXWV3AVT/vEeY+PvhpL0Won4KQfbEgwJxa/XIUbixou6HgqVIyQ4QPnWPXVdp/I
X-Gm-Gg: AZFdTZdpU/tsbzOg2grg4ef5EJeVVQJvevrK2xoN7IgcczjzO12ecW6oOUax3Ixn+ZD
	onRzGkLgW996T8tQScWVFpjTZXOA1avjdQTyX2p+d0fVp6SdY+cOFDStkhO23EoODGhyRQCK8VS
	Sf3SRqQ2n+mVYGP1kDdUqa8VljomWfy6YC+Yrajr0/VsrRYYeUxelQAdmqnSoFO/rKNnwLHraib
	nS4E1s0Abaz/RA3m0PsU6mriBlahXCaMa1l7vG09K31+zJgCxoiN23Ga8vYEqBBQr/I+c2aN6Iv
	N/JkXR6leCm5jkaUibMHRHlwLhAlB2t4gMkaveLzus35AvdtUMnz/TJXHIiHFfsP5YeE7rYIK15
	uNAGmsyGem3i4bUdL9/KFv6rdmRK7x0f0bqCxP0k43KpM6CsOFwRaeKE8DRzHvZoYqxKo06Gjar
	ilXl3a
X-Received: by 2002:a17:90b:2d8a:b0:3aa:6b5d:a00a with SMTP id 98e67ed59e1d1-3b41c95b7femr23643542a91.53.1795779856739;
        Fri, 27 Nov 2026 03:44:16 -0800 (PST)
X-Received: by 2002:a17:90b:2d8a:b0:3aa:6b5d:a00a with SMTP id 98e67ed59e1d1-3b41c95b7femr23643480a91.53.1795779856250;
        Fri, 27 Nov 2026 03:44:16 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b41adcafe0sm40480933a91.16.2026.11.27.03.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 03:44:15 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 17:14:01 +0530
Subject: [PATCH v6 1/3] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-hawi-maili-camss-v6-1-0f4844eb63b3@oss.qualcomm.com>
References: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
In-Reply-To: <20261127-hawi-maili-camss-v6-0-0f4844eb63b3@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795779843; l=1476;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=BTDhy4Hj9RCXelLYOtQYezLS7KR1Rsj0YchhEiP5678=;
 b=rZ37/Dykad1gUgWkePEK4ua5jVhBcm3T2Lx5wifTU22AKkzobNwh7SmlpOFwcEJqJsLvINRXJ
 qiDvisd2FMKD3dK8zMLrc/vaoMNTITRU+1dVBsO61/rl+XrMfL5girf
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-GUID: lqQtyR44yZOW_ti0hrF_Idmp4ObX_KCr
X-Proofpoint-ORIG-GUID: lqQtyR44yZOW_ti0hrF_Idmp4ObX_KCr
X-Authority-Analysis: v=2.4 cv=A7H5rKWG c=1 sm=1 tr=0 ts=6b096d11 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=LDBv8-xUAAAA:8 a=AartCDbB9JJyHY4DVtoA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=DZeXCJrVpAJBw65Qk4Ds:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX8MBQ61+WsHKL
 x24HdzyMwkuyag/ftaG/2cvmTPMCyr+poo7K8y6CLG137eusqsAZGO45tqDOm3pr89gPBRrHERW
 gi1fdQfCUtirJRPX7chmpbKhC4gGwyA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI3MDA0NiBTYWx0ZWRfX5Tk/jLeQ6pWF
 GYRNs928fHL8UB74xkpKrBpIbnKTe0KYr0edDXXJ5uK/bTSEuoBtPy5Ya5J5/QEoQA6PVsRIAPE
 1tnqRMY9eHy3wa7zWHMOG23Gu5tevAey6WiyqwtCghHbsggPBDlmPUXdX+8NoP0KpxucXeDU5Bj
 R0HZ5ndwrZMc0r60sG6d/fgl9Y54VPhuzQLm7LrvInZiurWhw6pzvFZKHHP32G6CBrWX9QZQEOf
 RvUKimJOvzVLzi0ShpUVaHvrsAfq/+Ee7SoCfbRlW951rNZ5geZ8mBPeSoqlcO8kp8bL43LALz8
 fJBTwndAuBjc31y6JJVQ/mzS7TfORkip3fxqnQoqnnNe0+pxJV6qpC9cMZQtO/Yd5qhpcfkfryh
 Ff2kq4NjrL1zYu61nj6Nj8pjxBTy+3SKbolv6/jMzef5Ltv0iEIFf7r7yee5NpDYtdkPbR7tRo2
 Bkrb7OqJT9FzSkbvt6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-27_02,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611270046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_034417_832464_C8EAED59 
X-CRM114-Status: GOOD (  10.26  )
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

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
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
