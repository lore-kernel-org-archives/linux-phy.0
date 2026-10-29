Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D865460A2601
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 06:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AzZhYkAy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LbY/wECG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=S1u660Pz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uuzUad/l2ROEP31GlwHSK+Wuhy6Xtweg9/CNIo4ioPw=; b=AzZhYkAynLKiRjeFB6748MlcEm
	Uz4XYtLEGBDlRDc3GdHwsJC8LLCHQ9y13dANuaPjniiaPXV2hSlQ6Satmfe1NbmGdHYAYJNHOLmTz
	Ga1vlAkIF1aIjIyguuJhs+d4P4DGNNIk678BmUiOXT6xxJC/XbJIle25X0FqsA8yzPK5xmnua0lGI
	UzE51wvyJEUwXLu4A6KR3Tlt/ZnTZz7kU5UE3gtDEPymJKkGFxAvT62IZ+x8QhmJeXPr3gQYBsPHJ
	Hr1zBcG7DvGCeH28RLQvTaHSj/wT628LrKs98iz0OqIRSRvv1inSx5xRTQaZNtUbyhPsNC8paOdNY
	ki9HumsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJLh-00000008RGi-2dWZ;
	Thu, 29 Oct 2026 06:10:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJLf-00000008RG2-0bnT
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 06:10:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69T5H0QM2427230
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:10:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VyK9v7BIQIUgn5FwyNENWCRWZneiieaKP064jjyjGUU=; b=LbY/wECGN1KdvcIi
	nOYfp4s9bizNGS9J8YYIPp3wLTVAK7e4pr4qQlovNW266Kzyh6hnUE0+4B2zmZXK
	4pirrCJLei4UsZP7fBj8r/AjiNioL5Rz+yD5x3mOGo1fTfHvUrwU/l8AaPzepwr8
	3D7Vr17MKc45so0DqI8Du2/FAFXSIRDyKPLflyIMZ2fV4NwyvealP1fITW5liNn5
	NeGtYm3HFL4UcQEIegs9IFTuZBEzPGaTqI71CZRv1KiyYMbT7Arr7whc5hBKjPa7
	PbO79QoUJAuKESXOfKZ7SYbMAthmUNxra0jnD+4mDGTP1GedC2ZmA/YurZGQV2PV
	3zH7DA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hknb2ahed-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:10:50 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30c0d568830so3598893eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 23:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793254250; x=1793859050; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VyK9v7BIQIUgn5FwyNENWCRWZneiieaKP064jjyjGUU=;
        b=S1u660PzSMebbaEtUCMo0UeU1NfDzPyS5ckfMqE0Km5m+VkOlGC1RQVZO6BlKzB/R+
         pPkp/jU93kOZUw5ZU3VvCsh/UCMaVbgewyNvoTvLqOJ+6sjlb/quXjX+2iEpeMIdDxCL
         qFI6J+z3xEDG4KlcqSAj5BdRZYS1vzJH2VrG5mkkoOPzuK7ZSQkG3qTkkqy+jbz6BjQt
         nREoGIRuJHU9Hv2uMCjDFVaIwykvdVCHH91RV90rehFFERa6ZBRvAwN7MilGoxgwvc2E
         KFKx2urgRVOCy8qqO9FmXiTVHNu+WCjJnjW68XX+c6RyXnyPUxL7lE9eRy3dPvuVTuah
         1P6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793254250; x=1793859050;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VyK9v7BIQIUgn5FwyNENWCRWZneiieaKP064jjyjGUU=;
        b=aXsmE1z9VvP5BIa8lWwRM5dSUasPJygUI3FJzwzJAVf1M2tIcDUxtfx6N/JlQ1X9Gg
         v8JwoTe++3uy7pIteYHgsxVM3nBygyYHQkS8MTXK+8mt+6fyv6W3u9rXH5yJRqThiakq
         Iokx5U0aaLfzgBvStwQa0iQ7t3IdziGDlt8cD3A0zMDR2F6FGvYqwvhbbIWIeEpDCHpZ
         g8zQkdscYf9z+w2RmlKZx/Pa63Ou1W0ETQqPGJ7kXGQ/RRlN0jrWrVdEL1dsjEo+Wg7i
         4ZlMuRB6J1QQmBpuYU2NytBWJ/qQnHZtP6yEUdPPuzH82EVJx9CZGmx4aFCcqiFd3S6c
         kqqA==
X-Forwarded-Encrypted: i=1; AKwUvBxTnYlunwAOyRlqjrn6YGKIiXhR1OF2WwMog8N40vperE60Vb5ByE3VJOVT+eDuvMs0WqT//U1d9bs=@lists.infradead.org
X-Gm-Message-State: AFq9FYJtcEQWtiX4O+HqmVWPpYeCPw7bowVrwLTO0ZVRLDcbFpgI7ub0
	hlsQ6K9ASs7AJJqaUO1FFKE63hSZjdJ3v5PSF3taK+6yur8dgBZEkE4YT8jsNpu38++Ue1emRSk
	55+FkLJLmbGObb9PJtV2DG00D/WaTobPKTChmtlhNbEEzxXPxABmtkW0S+lzkvD77JzVW
X-Gm-Gg: AYBFou39d8reqAa0+ycnfbmdHkK3NliLMi84tklWI3hhAPz7pFP/Qq/XbCdtMlquxIP
	4cVXkBMgeS5VZFVuhbQW/Y5IW5yT4fdku2Z7cWztpbspkK9yHLxr3wUlShiL8g+PEosNZAsYLRJ
	oDGTVxE9Wjhe8pOGERnxigSgvmCjVaqWV0l9ct1fVlSBOGRv6/xMPSOlm2J2urKkmoWSJPlm5rK
	4cM3J3beCL3pcxwQhTF4ke6MKNct4DdfqyxsrVfvwgN5EUNVP+Nh8vpwfhC/eleEqgN6UH/8XAN
	O/FaX9PPmT6RP4mmoVNpjhi7IdgozPR9wRKKPO6Iaow+2yzC4CoPPOJb7Nks0h84G98SnxDdunl
	bGFZCacYVBELkl8h7L2XyQ3WRQH+wQY+AvSCL9cOdzXC1PGLXOg7F/BA56k8Bo4H34GinndDlZG
	NCZ5dZ8V0=
X-Received: by 2002:a05:7301:1a08:b0:36a:dbb:2607 with SMTP id 5a478bee46e88-36a203ba789mr5853259eec.23.1793254249668;
        Wed, 28 Oct 2026 23:10:49 -0700 (PDT)
X-Received: by 2002:a05:7301:1a08:b0:36a:dbb:2607 with SMTP id 5a478bee46e88-36a203ba789mr5853211eec.23.1793254248817;
        Wed, 28 Oct 2026 23:10:48 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a239a2e29sm14038935eec.26.2026.10.28.23.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 23:10:48 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 29 Oct 2026 11:40:16 +0530
Subject: [PATCH v5 1/2] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261029-nord-v5-1-1a13c214e89d@oss.qualcomm.com>
References: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
In-Reply-To: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793254236; l=1074;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=5BpZafnsEX7T5i/WZquEyzAEe3ckLbNCfbpYPY2ev+A=;
 b=9/mtuPRHFjU9hftDlwFyl98mTojHjainBfGm9kDBYc3t+dgIKw/cai9hgOJEcUbaRVe05SckT
 /rPArPfRimAB4bsDcsiBYz8BUs5ieEvmn7qezfChXhAgp3aj7cTw/tm
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=Yu2a1IYX c=1 sm=1 tr=0 ts=6ae2e36a cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=AUvBg9Asf6StguVY0UIA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: wS_ioYdBjdCVgyDqWNoTXPj3pBL8P3KX
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfX/0m7GF7FwKTc
 ylCk5svPYLWdkxyy0Zlb2klA9kP37u+fMrJd8TCpYJwLexoqXavNhGNg5PoiMhYjPLYDC7t5Z/C
 iXYZyLqZgVrbQoGF9BqnTp5rUYtmdHU=
X-Proofpoint-GUID: wS_ioYdBjdCVgyDqWNoTXPj3pBL8P3KX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfXx5u9V8Rhlpzn
 G+EnLGRn9D/YMo7f1CDCElE2VVUbf8Sa7Ia68dTdCLYFxZeJDJlNxf5V/RkTz99HAW0Oa1DXHLn
 OZKKjlMwqZs7EfqLHM9e0bjitug4SspEEFG9WLZHXw79jPzCL+pCZUKw79WtUqnnHkuYXCvxNO0
 eNBDwOJ0hmP39tzooGPl4XrZOyrFLu81fCHe9++UMJf5S+06Q9RfgsrFi/oAmgKMwmXlomaYGl3
 69MPKeo1gZKL3+jTVHrkdxUFplF1zKtoSjLP1uOTWKuK2QKiW1d76WzB9pnKhgQehKdxci+oP8W
 wWiZt2ActAYLInGH4CBKIwC131JvHcr8dkAU6NJ7a7lUXqnKQcChrs9NIexkvVbTxyidyhj2gCx
 ws7pL6xPM2BpP7in1XWVzt9K8wkCNxhv7iwzWQN799rV3YsXw5/Ceritdk9XDPysRu8dR1TCbk0
 gvrFBwsXHJwygVxfZLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_231051_438674_043A83F0 
X-CRM114-Status: GOOD (  10.34  )
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

Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
controller binding.

The Nord PCIe controller is compatible with the SA8775P PCIe
controller implementation and reuses the same binding definition.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 63630a814f28..b8ba2c4449b7 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sa8775p
       - items:
           - enum:
+              - qcom,nord-pcie
               - qcom,pcie-qcs8300
           - const: qcom,pcie-sa8775p
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
