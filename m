Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2730D606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 06:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K+59wt+z;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=k9k/1y9/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Dlmr8AnU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yi4Xj7ccGYELX/K4J4icb3yjj1C7ck9m6fEX1L46Jcs=; b=K+59wt+zFfZoaJxOrGTel/6+VA
	oSb4k4QjyASlp9Txj9l7JBJsNJm+2uLs6sunV+/GWoO0R+g51sh4H0oZVnOlbYfN4LtfjBGyWNeCz
	enu92Usv/CvujFUiNnzhH4K5p8osvTOx1L9/CgbjYa5VWzFrBr8qi4EEHEf1i+kNsSDvd365YfEby
	yEtx2M80HgLpN6UDHANHlj/+FQhfB8UZ91rLeDQzL5f7p5OZP5Kt/gnbF9JDdhBYyQYFSPLdJVTrp
	JDoGahuRKmZ0gXsPdRjhZw0v17UK5MD3D/CLixr+kxwl0l3L/AG0c3FeLwzNb9ECu1kDKt0VYZdwr
	5kXqrG+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW6SF-00000008fOf-0Kvs;
	Wed, 25 Nov 2026 06:26:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW6SD-00000008fOM-0Y1F
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 06:26:06 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP68lWp057338
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:26:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IJPyYpIYmrR4ZHeGVfNDne7NhRPR7qG67vM1M/zaXQw=; b=k9k/1y9/scGSD5jT
	3WN+RtahfOXWzDXTqjN2A8K6ArnqV2qejClx7c7yThaRV6T3bPacjxj7S4GTxUwk
	/IEedcfwm17JhioUL6GBT2y2BwVFGLpNEQVk+Vl4RP1Q4DNrk3jwBvwRBrhHePEs
	yaUVVhHvLcDV044yf2b+C3UODQIjufitYttABSM6CGW1GoqPCIRxh2GjZXAPkj/9
	H36BJbvzrPioox5jHi7ugTHEZ/wv5MUoS1zNHGt3hgctjhUdvJWwlhcNv6jGEZHS
	KFBH7kMo8yfFpHCwBAwKsHh8Lgs+ZiZ/0sYnTC9EqgWxFDCfOvDj9O/dmtkMDOXB
	zENvjw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5gnfa1mq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:26:03 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8a079256596so3877917b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 22:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795587963; x=1796192763; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IJPyYpIYmrR4ZHeGVfNDne7NhRPR7qG67vM1M/zaXQw=;
        b=Dlmr8AnUqDWpez7mhP0XAsF6C40lMmnEufEDyTZTYpA7roI08BkBmhxS5Pjr4T59Zl
         t9Jdh4T6+0hesLA3R9B6DPY1XdceK/nzbLrFe/CiZfMHZ6vg4pF8GEQO4ov8YrQuO6ap
         KYq5vJYMcdSRCkIdNPXNwld9X5bDAyo6YxmFgmIc/0ncHvG9JO/vRHpPbJuWe2coUhUA
         RIsK8+RlaVZbLURrovVbwKNU6FYoKjGrDXY1+7Tq1ZNyw92MnDzWzkYpRfP21CXIBfYn
         k2YbozAmVuNMCbu4sFnVDKUTz87olSXb/XEv/B9jXDks4tC6r7/q4UuByNLzNJGdUgrc
         snZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795587963; x=1796192763;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IJPyYpIYmrR4ZHeGVfNDne7NhRPR7qG67vM1M/zaXQw=;
        b=CBJl1fDfZ85GqM8C0oKvWCU2UxS0kH3Wfd1jXQ+PeJWPPJrIuKOcn/NdCxZWRyTuo6
         citLSKC23OwsOxMjebHKhbXPh/0CvsipFgDNDo6teLe3gqo1YTCBDATjUb3TpvPXognf
         tlfmatMZot3H6U3unrxtZQRxZzoDeoKFR9a8PICFv/xBIDLJ6zh7l0zYqHDNwg8UffmD
         kIG4uUVLVEq0ngKMmQsLq4C9Ys5jhNna9HCbT9pLSdoYmjZerV8ifVTYcinOGYptts+5
         uWiaExu8dShb5+FbIyhiGcM3jI1hBfvOKrWPPKaYENu00Rbm9AsP9BwQ0vH4SfXIh7wk
         SdLQ==
X-Forwarded-Encrypted: i=1; AL+hErHMPKhn+zFW5XKoUxaeGxy/jDAwVcyUxrZA/GrDe7mYJAk288FwuIyQkvcLnoyE/5iwZ+/TC8/3+So=@lists.infradead.org
X-Gm-Message-State: APuU4Z804p6vfASYp9ZY0dTC1Q7uIETFoAroDIhZ5BToiMMalrpgmkTq
	xISpXznrTGMj+3iVU+zcQQurfyTPbIBvKXrwNLZB/fu5UC6d0NrMfP7RqGcw9uulSWLABMbntZS
	kaWRLrQ7ZJbWgO23bw0tdnH286VEkzZxOTbEZw+gANdwIoLQK+F78hotoabG1Dg4j35gY
X-Gm-Gg: AZFdTZeH0iyQUSEgvyT8ZdQ3h9h/Yg5nBQvA3+hYMZuZZtvDndhML/E7L+UE9MFPnWe
	JV4rEYS3giov3JwQn3qHdWgyMuInbPG6NGccO6nR3MhSx1DOx91s2yilyQ9WXvAFKy6E9HIq2Nu
	2MaOvH45fiPQk9wiR2XpcmWPRKNqAfs5u7L1fSxETDfvCtssq+d4u6sV3jIIuPlsSn+7Xd+GufW
	ig4TtfUO0g2rGw0XbPT0gbqCqA1APgVucLNJi/Bn/brsxjmwjraSz/smkP9PZhrqjBOe3p6NwT+
	UPWCLp89sd7wjTVkUocI/tvFH7BBmlzrckVgrZDWedaPGj2kajg0zCD8szyW0MdOF37NG0oOVgM
	2WeyO/4SJojygcFkEoTWElzdI3ogtOrGL4HRAU9adF2CXbdSJ8ZxISpLzqK/VaJ1UBu9mXWlr8R
	QOKTuj
X-Received: by 2002:a05:6a20:244f:b0:3e0:c102:33d8 with SMTP id adf61e73a8af0-4014c253b58mr17767008637.56.1795587962773;
        Tue, 24 Nov 2026 22:26:02 -0800 (PST)
X-Received: by 2002:a05:6a20:244f:b0:3e0:c102:33d8 with SMTP id adf61e73a8af0-4014c253b58mr17766970637.56.1795587962325;
        Tue, 24 Nov 2026 22:26:02 -0800 (PST)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm8385066b3a.2.2026.11.24.22.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 22:26:02 -0800 (PST)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 11:55:42 +0530
Subject: [PATCH v5 2/3] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi
 and Maili compatibles
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-hawi-maili-camss-v5-2-1483b7f68dce@oss.qualcomm.com>
References: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
In-Reply-To: <20261125-hawi-maili-camss-v5-0-1483b7f68dce@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795587942; l=1527;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=VrCho42XU53GTqUrn16AUx0FovtMl7rE/ickbc+QQAU=;
 b=z0AQLIDcrEmb0ZyhtN/DXrU7OlKamWSznS3tZAfWhcgeGbzMYpkrP6UHnd1TOfgA7nIQd6dgp
 +tkoDTZa8nBDptYhxqQy+JOmHu0E16q0Wl05A/mRlpvZIx4w2iBj/+J
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDAyNSBTYWx0ZWRfX4hIFZQNH2wJB
 qUvmmDajBoC89VoWRwVYqfl3VnhZSH3kEHjM9MZryBooQl8EI97qGBPi57HJa2LR9DxR1YfpkWn
 V4wH69vUxG5alkPjG5MINDxC/Nb2JmQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDAyNSBTYWx0ZWRfX/Y/AYhO6VWxU
 SZldiJLIIHg70F0IzCndSIFKO90y1ez/sSdD+IM2Ch6oJKGGpNHDZCRl86FcWX0FeeCYhAImTHs
 ej+kIUwMxgcvz/C8C1f5YkwTGrdR/hF4qoNjw1+zzVQoddbDpDLyPvqJbwx86YXjXlyDnzd4ju1
 8uQUu2FA4wShbPaWBVh4pXsgt2oxDgKgTBF4Ayzt0wVJyIT7LFaKfTKq6zvjouz4hVlyb+/cPGv
 KvPW7yK9tvxzbS8s/vhxSirGHjq7zaUxA7uNKWeJHl4IP9DWpOQQ65IKleM4aHE24oSWZLWrbMI
 8tjJXDvkxWz5QWuTMElqTGPcvb+7yeLsFOI0MAo0uSj25NG54eZU6J1odliPKk1AFnzF3b42gDf
 xScAtJWW21ccdGvJJUGikjgCPt2ScfjjSrClSuvlkvqaJmQlJ4vb+/gxge5h0ErkfAI27vt2NbW
 HeUhkUdTOgKUr63X87A==
X-Authority-Analysis: v=2.4 cv=f/Xdl+yM c=1 sm=1 tr=0 ts=6b067f7b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=Qbo-v1IXpRF52dvEqNcA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: q6hnJa-h-miDegJKCNV9n2yv1B0aGw34
X-Proofpoint-ORIG-GUID: q6hnJa-h-miDegJKCNV9n2yv1B0aGw34
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_02,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611250025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_222605_678721_82E5BACB 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

Hawi and Maili integrate the same CSIPHY IP as Kaanapali with an
identical register interface. Add qcom,hawi-csi2-phy and
qcom,maili-csi2-phy falling back to qcom,hawi-csi2-phy.

Co-developed-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 0dc8b7859447f378282732813aa6886bdb1ea4b5..40e9a1725d57644e480c2d25a5f1c0ee7e1f5dd3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,hawi-csi2-phy
           - qcom,kaanapali-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
@@ -25,6 +26,10 @@ properties:
               - qcom,glymur-csi2-phy
               - qcom,sm8450-csi2-phy
           - const: qcom,x1e80100-csi2-phy
+      - items:
+          - enum:
+              - qcom,maili-csi2-phy
+          - const: qcom,hawi-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
