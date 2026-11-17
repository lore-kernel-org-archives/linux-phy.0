Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3ED8606A332
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 09:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u/0liLIi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=el6x6M8t;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UoOpofVu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TZOeAQXnkw9BP3/2KVlQscD8uECfHxb04hJCLblTvjE=; b=u/0liLIicnJqpr4uP30lPJTlL+
	bn3AUc+GYsN0Su89Oy8/BmLomFbCfhMmeeylJZtIE+aGm+m3sizhysNTvAneptLrzAb238y4n3PoN
	OJTWYjxcY4yzT5yZXLwQ+Lx1eZRDJ+daX40ImuVSbcDNnhp2pchhXzWXlkMbbkKFlLcwwTzgv43bD
	/P8+AOeCINgvgtCtJyVlPscRTnq4aHCboPUB5ML/Wox3J+HyQiAknUy7a+sL1TAhOVGHQc1Hebplw
	Yshsw+87ro3fJ3+v83pA6tpPBDiauSkyiu5mvBifwvgZVIhGd/SY3v0OKMwyqKgstDAcUb+PQ92DE
	EwDaXQxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9J-000000051ZC-2k98;
	Tue, 17 Nov 2026 09:06:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTF9E-000000051XK-1Z8I
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 09:06:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AH55sZn3350801
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NpeH6W2mGQSO9hdnpb+Cu3cWV0Cz0E/Y5lbQJMm9bL8=; b=el6x6M8t0vNEK+ti
	wnjBqHEiVus7pM93+QJ5QcV8cPJVvxI+UbTFbdIOjPCgt8BIGptMRg3wTlZqQsMt
	ckoONXugdN8FRUlIqcT+A8IQTx41CiCGngXgBtQCBm6+xqjIILOtrS4Pn5A/ZAtR
	rCKVoaEZF/m4d6XVMwUltCNLnRgMV01usIRbWOSx3zYnc6QMpLs0QLz33+ni/yUu
	mfPKWAtsmGZlem1w+p9MZzacOYWPz02hOuHon1lM+gRKElIqTRi45VNa/UzOM6d/
	Flse3FVujAs8rHWgwyjD5DnhCeAQpY7CsnCsWN7DWJO4KMkc5CNOrrQl58HXHcxZ
	sO5k6g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0gfr0v67-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 09:06:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9495a1f5e47so352631585a.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 01:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794906399; x=1795511199; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NpeH6W2mGQSO9hdnpb+Cu3cWV0Cz0E/Y5lbQJMm9bL8=;
        b=UoOpofVuvSvKz/0kk2TbWKXC5weeLpGT4SzpUQ8PDRDrEbWF5CyEKgnL1npO/O1Xv9
         PtwPec/weLa0D8DU/RSm+BQGKv2GIl6Ee537gpR8czcwWtl8p0db13yUO0wcreWrQeyz
         bemdepomn/L3j8gQlrtkSGHmBd4cG2DPMVrWRW1dpWwjl14jBcl5cU8BzpC6VbSFYasC
         W3lNMyhjCMZq3a4hQR5gISUe9sEvfZSYKwDEtEeYltVySrQmVE6Mhnjzwj0hs1dt0o+W
         PJbTAEAvJki7LhIT68Xp+ubNqlHTCaSnDAvN+YwE4dXUCmu7gjuD4WgFrxf55Q+l1VuO
         tQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794906399; x=1795511199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NpeH6W2mGQSO9hdnpb+Cu3cWV0Cz0E/Y5lbQJMm9bL8=;
        b=z1VfW4eFWX4upHV5K2Fh1fCIrOfV98UmKLIoze1dGSIRYtYvr5M5RV/jPzlLJPCYGL
         R/EqkWKpsprVypvkITw92+fSBXqebU5lNvhKt92ocLaEIs3YBy+EVZRTFfnU4jAmyjY9
         HFL/ERRk9qpG2ILDoULDW7uWyh79z8yx9U21NPaptV8HwyQGfMegUmQeT9TSC+lLT+rM
         7wF2eqccQ6FUSR7woxwwi1EVygWqZeeK3d0Uj3GqCVcdwGMIyy5ljvq/mf/Og4/Qt7Q9
         OlzLKoyiXK2M9Pjo2NfSvDXwhWOUk0B19I3HBIFRwYzNaFo+hnsKl75O+a1h2rrRotpj
         sq3g==
X-Forwarded-Encrypted: i=1; AL+hErGbFWvGTEnzERnoK4H5W+EFZnRuQ3B7qQlAXhXfgdKWBEEg3zUDkdI3g7pI2p/wB11RfXzltNo8yEA=@lists.infradead.org
X-Gm-Message-State: APuU4Z9aQM0eSLxhqZoDzTZ+f4LI1G+jSNu/DlGmQl+oC6ztd03RMKgL
	h1lk/L4L5g+3upW+Mk7MVFdbD9f8YIlGaM3Me7hrCuTus3PWtvxzu13mhYxCNbbSs/cm6uY+3Ul
	4ozJDw6rSKusGDntrG00TC7YchmzMdaXmXlmv2s8bYFFLd8LbyfYpmHpMMcU4P7odL4av
X-Gm-Gg: AYBFou19+ndMi1z4AphyfdF8dLb+IhPpGROeqcQNd5HHErwaoi+IP/A40RtgPIUpFId
	nEkuUORDVDghxWc/dpdnHnQW17LZeB1ybXVjDiTK7i2gW97rhWgqDQtV/6HgZdTPBZC+g1EgWyM
	iK9suVKuX7RUz4clGpYdeu46JnvdaMbFy4IBWASBC3+Vgca85sd1Wm4oJiYu2tKAQeUInm18N/z
	lzNDvzpi4fHQjeCXfFuSirGascGwXIUH9OnJZ7lLbPwKgfnJjCJrZho/+SXnfwPNHm783MtsFNH
	0vzd3cslXL4F26oTP8Iaci0CcO3SxmB9q7+Pn/o0QmJydhgj2WSZzR8vwQlB7vSjJTaE5sKYgvd
	u2hJPK0GWLn7pwRB/PXqMUBwXxkLs8dzIuxED78WFnMghh5shegQwTpxCJVZ3MeXBWj3RWbIRAd
	U=
X-Received: by 2002:a05:620a:a002:b0:949:5e26:e92d with SMTP id af79cd13be357-9495e26ee4amr1439147685a.31.1794906398673;
        Tue, 17 Nov 2026 01:06:38 -0800 (PST)
X-Received: by 2002:a05:620a:a002:b0:949:5e26:e92d with SMTP id af79cd13be357-9495e26ee4amr1439144985a.31.1794906398123;
        Tue, 17 Nov 2026 01:06:38 -0800 (PST)
Received: from brgl-qcom.local ([195.50.164.66])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c60f8d615sm27310657f8f.56.2026.11.17.01.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 01:06:37 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Tue, 17 Nov 2026 10:06:29 +0100
Subject: [PATCH v3 2/3] dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord bus
 clock
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261117-qcom-nord-ahb2phy-clk-v3-2-ce5ee1073208@oss.qualcomm.com>
References: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
In-Reply-To: <20261117-qcom-nord-ahb2phy-clk-v3-0-ce5ee1073208@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2721;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=QBN+1dwmLBD9e987Os73d8yZUxWyOR/u7FUNVAxo3UA=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq/BkX2COVyIWDrc1AcaLuDUCPBKBRpAsarEgxP
 XI8WM7T2UmJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavwZFwAKCRAFnS7L/zaE
 w4meD/9NKT71+HUIz37juikjPPfGnNgEnYUYsc19fMFokGZkeLFzkTJ6EdiRvZkHUmWFiUMtAXe
 eQ/sGAUzF4bDux6v8+zdzY028g+PdH/31Vyn5NywV6vAWbN9nSuTZA9yVNNDqLrDHNmhZ7U5+2F
 5tcktQEO4VyzM9kLS1gFhH5oj/hCm+y+nBcL0/fgTLVChXP2M6ChhIR9FKwmhTrww9UImhj8bWF
 zwAPsHj3xBWRSLEvOodkc1RsDuAJYXGLtGc5oYiVlD3qLm57KsICyT7UIy+kY23bgteSlQnvnna
 HN5JppU1tPjtt6tki49eLBqHVDocZ4VU2sWyUhXoxiqIF7lLEb7xLQC9BgTzzbRdbMQP4tT6Y4+
 1ZB0MXnT3UcTZxqfJ2SXMWZzFqsQC3NPIhqpsObfilL8xYzVtR4Mey5YAIkvlgPIq2ulxN0hmzu
 TqufLxQ4AYEKlL8Y7ofVqjYYGpF67wNQDdaNWSEl8My04RiputgrNqEbZ5IflkWLXumN8TKJYVy
 m2nyH5e+8j2LaBzjnJpZiRPwcIAO2LeU008+M8DZdeP4mBcs36OjH1/MPratQQO8UstFfj2LBee
 ElrtOxrcR2LvBGbamQ7fLtk256tHtMeZTtxzMxMe4Zk0L3Wj5EmWH5hN8IXkE3h8XeAAcuYBRV8
 lY18lkrolGEOCBg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=X/rHu2Te c=1 sm=1 tr=0 ts=6afc191f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Jk2/TV77q6/E6wQq2oQJxQ==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=tP9VjBngxETQ9kDmeHQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: acvASWjyek5AU4n4Xk_iWR8eMKTRk8ol
X-Proofpoint-ORIG-GUID: acvASWjyek5AU4n4Xk_iWR8eMKTRk8ol
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfXwh2iVvRnV8au
 dslrK/dCCWui+C1olcfLTVk+xq/I8aQ7eFLA5Osdmsk30jPdamgxoDmwDoZ+LQ1HetbzfUrxKiC
 QIx/oX+5r0hz0stPD/02Ie/KGFuLN3qx3ePkP17BkuGjhYIvN/2Ecl1aAotdq/TqTnyIwdmcoOI
 xLsb+Kxn6AzYVYAL+eBA95r3NkIz2TTyMB565Bv+SfBcH0Dt9Q1Y2niQVgquBT8FXJo3HzBnVyX
 R5esajZh5hxZPfCBbPqDqhTuKnc3hf3tH/f9lCEpAdpzI/RArX5k1ulXHhnvwhC4AZmUtH24OKU
 xoiexTwXZEftmUHBOMOfovvSXhVCY9q8oQgNKeOkqkiSFxO5PyrDJvsykcjgJppqCQlHcoITI8/
 KKP5g2M9gx/1aXk4W56pz0zzbGdzq32HILRzF9M7GZTgTgB/1zP30tB3sDSDIK9C4DKFiYpYQr7
 WmZO22fXIP6P9Jp4cdw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE3MDAzNiBTYWx0ZWRfX6cA0fihRaNDl
 hsdFcyOeGF35boRA2C5/MTBRqoR6UDf7k/sDhkGHOpNWWRAUqqVHBlRClrBDTlX9vZTUOHeO1Qc
 VS2AbSuAammwvbfDsVdjApTUMkCLo3w=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-17_01,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611170036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_010640_537808_65851753 
X-CRM114-Status: GOOD (  12.78  )
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

From: Shawn Guo <shengchao.guo@oss.qualcomm.com>

On Nord, the eUSB2 PHY registers are reached through the AHB2PHY_0
bridge, which is gated by NE_GCC_AHB2PHY_CLK. Allow an optional
second "bus" clock for the AHB2PHY bridge, require it for
qcom,nord-snps-eusb2-phy, and keep other compatibles at the single
"ref" clock. Since the Nord PHY needs the second bus clock, it's not
really compatible with sm8550 so drop the fall-back. This is fine as no
DT source uses it yet.

Fixes: 4d1f3875f328 ("dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY")
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
[Bartosz: don't use the "qcom,sm8550-snps-eusb2-phy" fallback]
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          | 27 ++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 931cd0e7d297e..40c0b8b42182d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,13 +19,14 @@ properties:
           - enum:
               - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
-              - qcom,nord-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
               - qcom,x1e80100-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
-      - const: qcom,sm8550-snps-eusb2-phy
+      - enum:
+          - qcom,nord-snps-eusb2-phy
+          - qcom,sm8550-snps-eusb2-phy
 
   reg:
     maxItems: 1
@@ -34,12 +35,16 @@ properties:
     const: 0
 
   clocks:
+    minItems: 1
     items:
       - description: ref
+      - description: AHB2PHY bridge clock for register access
 
   clock-names:
+    minItems: 1
     items:
       - const: ref
+      - const: bus
 
   resets:
     maxItems: 1
@@ -77,6 +82,24 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,nord-snps-eusb2-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
