Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 570E1D2F7FD
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 14:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNtemXUqkrUsZaVdQ+wWxaTT9MfRLyVuqaDZFQ3fD70=; b=A32LjIAiN/IzXB
	fWJTy+lOMDE+xB3fSi7+0UU4cFnqZyyOsYejwWknzYzDaE84xQqOeX8mXYOuzn2gqgmtzzSykf8Mz
	JgLrlzXPzgnH0tM+hy3bbZBAkFmihpmCjSmyxi/D6mTLJ4/YYvDB+Z4yJ4N5xQcFdPQrjmlYm+1+w
	RIJS7qKvwlkxrxDwxovYJkMJr35HhOHp7I2eCIW7b325vhq274q4IMVXkNLTT94jNuwvNossiNJpU
	H9HFD4m/6hx5aREWo4gtMsLAGBb8nGasS5+6e3fZcubh1IvIfrKu4RDLLWT6ieWh2c0CxrOZT4Ixo
	9A1uvSEU5FKbYQD5TCag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWin-00000009a8i-2rlp;
	Fri, 05 Dec 2025 14:23:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWil-00000009a7A-0zEw
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 14:23:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5AqYCm3135867
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 14:23:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=; b=maBHIwKsp2Q5lzg6
	TkYJ2c/s2exAsl1JgSSeIxvvlUk8pV/KiK1jZ2TlvaRi7YVERzSXRTMrxPZTjm7t
	oGhVr3NUcJGg7qWuxm69RGbTGSXRsJCps0Uf0oTmE5nGMxxg9zE8E66j/N2H8Y6p
	/jaa0kr7jYp+0M4gctW64eKN4m3101ZBQBrc5Q12p/9mpZeiVm18Kk1LDQpVuwWN
	FTz6iF5qn3waUXv//7bODExJoHZly7mn/RR5M9uMWIZZaf+H4UMs26NlWWeSlyTt
	gapz8Wkp2C8tLDXUDamWst5sIj6+cpw1sNP/LGycX9B2xXOX9gNxpzVEz0CgrKOD
	bCb4TA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aupa8sv6k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 14:23:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b52a20367fso579401685a.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 06:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944622; x=1765549422; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=G0abELvD1xRqspu/4cRIfTwkBsQ5c/owR8uBvpQZjqhyuCGTO2jw8SpQ4deFcV4kaA
         L9IqComulc+ZS0qmuVGevsNljfvF9I0NEBfwUcpLhFVofaBznhSjY1+qP/eqJXiwNp25
         GE0yu97le0ItL+NQ+Qv2We7DCeAt5ihKyZBl5pAvqxVJ9Yw5s+CkocuXQJi7bmuxIW5V
         mUMZwUSOmOdMLJgA/LV+OJz7ZRDT1KX814QorFhfjYWqAywEB/IR1ZnEd9T+X+ZA7iqo
         A1O5lOVW452oEPKiHHW8DUfi35Bo0AIloBnCqS8rfgTSwiN66xhZFGXIWNnyzN9ifuzs
         YgLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944622; x=1765549422;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=VR9pApHORpShuulmabGtSfLzcg8TfxDrKvz5+kVmu/JNyf44cVjwN2TOmm4+/XiS8H
         UDYtVTeqmxyZbb5P72uHmMbV9ostgpSQLtVN/YDKnKM3UvF5dg/LAmFV6Almjd2ABRxm
         nT4UD5VMP7GWf0ii1TTYb+ZmAx0opAZMmsyTAhcq5QKlNyawcow1h4PNtWWfXCKgzWOc
         r+r/N2ydYU7S+e1bwPmuBrOCAtmxYTbERO5fbdv7vDHaClnj8f4+yvgOog0r2hfMiodT
         wDbNGuw8lh0bDBb8ktf6HV0cdmq5dwGOzzVZDFNO8U4vG4TKp5IxbiES9OXo6S0EWvBQ
         DgdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH7qvNBUZjKiW+PkHQsDVZkTz3QK8pTEIts2OSKuA2IOUfPuUhXGT/6Mw2J9h9uFPaYyQWiDUSZTA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyY0tDeS+AjzKFOKmKYw0/cEhduEEksLl+4kAXXAs6uwfCYygoS
	CCxH1k1QYDU9d1ftBHw0aqbb2219ijmmP08cuixyGFhMvf5bJhSa/73pmKjD0Mupm8R+YElSOPS
	eTmR6wq55uiPWsNPaT1wCPv9Tkx1/5a67mwIdOkJYwOFB002MwpNyDknS44fXH1xNEd4o
X-Gm-Gg: ASbGncte3KNC71VSCzrLMQGBzqXsT3ZZtKadATlbKIaQIVwojAcmwWd0ZaLFlDdzDRn
	xfCOL4oALlRa4RORkoKCh8HA1JQ+HX+IB82K92FG0WkOP9td1M3jbg6jP6BQwTq6vxHZ5BQQxTf
	hEn36Ue+gNd0jN6+krJaR05u9R5FmtwltyGpNrdsdCdqjE3wW2HHps8hrHfPxmP6+rsEY3xDQji
	Mf3fRgAXB9Px2jGz2oFjwENIfp6sri9SOBzvlpJNYV48YS83kBTkcq30HqSOKswN2+L1hCk7kEg
	uYdKYzvY+HwaXig5CZ4OFxsfLKVfCsEj5u2/aZDpmtqzo2JiW9wMU9LDdnzBsJs2sItNyL81qUk
	eCZWAluk864h5UY0=
X-Received: by 2002:a05:620a:2846:b0:8b2:767c:31c0 with SMTP id af79cd13be357-8b6136ee5dfmr1115236885a.4.1764944621704;
        Fri, 05 Dec 2025 06:23:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5DLeDF5MUOeEd0Y3uwh8zOmL2/TE7Tcf7NqeHJtIonKuSqWCxTdwXxHzgl2J/N5U0u+0xYg==
X-Received: by 2002:a05:620a:2846:b0:8b2:767c:31c0 with SMTP id af79cd13be357-8b6136ee5dfmr1115224685a.4.1764944620730;
        Fri, 05 Dec 2025 06:23:40 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:40 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:20 +0200
Subject: [PATCH v5 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
MIME-Version: 1.0
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-1-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UjT3XNaICZQxaI2rtQkKLAQyo6ogQ8qaT0RvJnH3+s4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurkYipeXP0Khfx3gZTg6GV5H62s714w3l0Du
 DQ9TiZBE16JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5AAKCRAbX0TJAJUV
 VtX6EADNLN1GC4Br2P4WQlwrPRF/EVq3EEzgOBQffcjVqZ7WxSwm4CGZz1sayUYRgE3FPKL6IKa
 MVXLseh54kQhMta85wAqumsYQnVoLchalVJ4dy20gaTEPY8qCNXx+Q3h85l4h9NHA7LIp5JQeNs
 h3pd2egcNYf7+jvYdfoPSLD1D2nGpBv+3uiYeYW1G9GZ3KxgzY0o0y1idv2pjOyBl3d0OsyS5Av
 VYJO6cT0hhQTXwgU4lsntAyqnAoCwbGON8o9DzWdMKQYvY2lPliisxsQ25tBmr1iyGghiQgD/sv
 lQb0l7otoeHgx7lPzYPia0rxiklNxHgKj5NKUcnNHr1VMl0S3jPnZxqy5/fqH5bdbWJa9ZnzXwD
 L5hk3ePJ3G6x1r8WrMwktrVLDTkQ1GGw4q+WtPZ0b1ONOFuoC2LifgvSfJQ01itu94h6q5hFRvX
 wZonZn3e6cRNcAHCPr1d2WU3VukoN3RyqVgfaOrP4l10xuZJhmsnMgf/RiOZZjmNHQjrGJvOSxM
 JWfLGT5hf0IZFxMQT1E5JWkiEtTfNtJSzXZxys3iMY/z5v9N/TV2O5C5k1gnKp3biFeapwmT6sk
 C0pz9meUltF0QhzXh46BECbMRI5IeqlVvG35Og7y7fDTVdJ1Z+lRshZPXjSHjAKIKPMYA7L5D2y
 KcPsqQnX7G7KeLQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=ZqDg6t7G c=1 sm=1 tr=0 ts=6932eaee cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=adPXzabyy6ZLveKXoAMA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfX8aQ90IhEBS48
 1PNt3FFygHLEsfApa4yk0U/oL/EJ+GkU2oLxCJEkwJKYmrx6jbsS2rUTnzVRINRptzfRekIhFck
 atPZHmc82rwdGgEZFE79thL0ZiJXv1O1EOY6ZCA16QedH2fJhZu4vD3PhWc0XTXKmZhAKuU6yBp
 q+gqr6j0GLMxOSjL44C+xJmIzQTkBJIp8KzMo2gfJ+BzvAGWK5vawJrGz5pGRqZNXxr99OHGkBO
 qL8KgkK3Nuw6BclegGHLCny4NLb2xkiChujSrbvGDT8M/D8tAaPzZ3ZYrMpCPexRwxBkOpAdX3n
 wZIA2hB2TioeGWY6uT8Z4IEJIPiI1Xl4xrXqpvN8y0wFK+h3SqQHoh2193VFq0P7xhFR1p3Bqym
 /0QNfYQsSmaQUmaF8iFXT845UVfc8A==
X-Proofpoint-ORIG-GUID: -Z1CW4dKgNZrq8mt8jVDaEjTPMy4480S
X-Proofpoint-GUID: -Z1CW4dKgNZrq8mt8jVDaEjTPMy4480S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_062343_401144_D1B65A47 
X-CRM114-Status: GOOD (  11.00  )
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

From: Abel Vesa <abel.vesa@linaro.org>

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff..4a1daae3d8d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
