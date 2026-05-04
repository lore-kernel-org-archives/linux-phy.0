Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35275FF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 16:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9XMPD6rd0TMU3LmSnfE7l9Vsmx/eSJG6O8cYv/8jaYU=; b=AZeUok39RcaSUk
	CQNtYxzMT/h7tav+sP6hZJOir59TSsq9H2MOeuhj10xppnHfmWatV47zGZ1Hcn0+xRQhuakZNb5dF
	EPgHa3Weh0Xk6yhKy1nfoyqwAcxpe3ojzIapzJBJH2eAVDe36acyTjItE19jKyQDnGWAgceu0CaPu
	h19JdJN2FkZ5zdYgoXDeNyyZwhuZeSA8ORQNN1ss46SlIozzw28gikrWtBoxPlVXOLuXJJ36k27dw
	4nWcLM5AWNDNZCA5JAHSzAe0LQrhfvfHgrMFbExn/z8JmW5idA0IkVqRfrtiVPSwbPwCaqU/TN+is
	6YonkI/+gBmzOrUpo5fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJvoy-0000000DfLf-3g9o;
	Mon, 04 May 2026 16:07:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJvov-0000000DfJd-3lO7
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 16:06:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644B4Dc84128828
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 16:06:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=V4f/xh10dV2IqVEkDLTSJP
	q55daffPtZsIDpKMLuN20=; b=ClkvGiL/RuQPcbN3QPA3+sU8Pqk/C6gFjHzXjH
	EuUPA5kiIMKmczotieM/X0w5o2aAvP0X14YhE1tdpxYx8z1bdjiZZ8XFaqsBHZaQ
	cxqg3POTdd9Br3eRi6NzcP35c6C2EydZ6QlHnnCb/7Im3w4ppvY2gJ2YK1RbuAY2
	RjzH6bQ/5YTUMM1lpvbvQSZSZvdxRcWADacv4iIxolyojHMQreNapp5YEGcVTDq6
	1AtxpHqNBPQdoYYdLVnPmguDVNJl46fzMKM8Z9GxhWhou/jTAChOYK3w+R26llTD
	9+Y904Uoaa2cBEWHBWMvHDH/bBgj57smr23hOw2tTsovUEOQ==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxsdw1660-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 16:06:56 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-479d602f323so7420034b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 09:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777910816; x=1778515616; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V4f/xh10dV2IqVEkDLTSJPq55daffPtZsIDpKMLuN20=;
        b=cw8BFqfbTFXXwtQ2C0xrfiizgItnvCz4Yspat8e77pm1TQNg+rmeNxels7eJxqDMY/
         dkyL9n0pu/wsyKvfNztvz7ZA4od38IPCUwTPXl57a4MJRte98pqAU/bmxfKQhgViQFjm
         XgTx8JShwJaKDBKQSLhSOHEHytiGDUdui7XPpp5kbEkIPV4wYCCkDAXOC1jET1XFwEFg
         aHAagSFOKcl+po9slFzyIigSH48BZxSck39DAwXuqyAlhhSjnsCfSpmyWj5lOg67KJF4
         IdJYjXMl9B+orQN15K2q2Stjh+/1E9YkTLOTovGH/20bj56RmxByIteIXx91royQlhyJ
         vwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777910816; x=1778515616;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V4f/xh10dV2IqVEkDLTSJPq55daffPtZsIDpKMLuN20=;
        b=j5ND6aqU5QqcX2UBi0JVzC+7HUBJvZHvZO3If5uWESZnb7dfD2KYWXFaCgD6hlV3gD
         NMbtycplRRf407wgM/rhBNKYi9tpoMw9KHv+ergiOd5LtRzH4g12KhzFlyWEkaJiAgGR
         LH45wMj6RwTAXcVudFuuqESozk0wahmwmTyX06Ful2Hfszyg/gIMk5n2QjUD+SNJ6Tnq
         j6T2WCY4UgeEc+5KzyAkLQ4iWd/IEvsLMx/d3fD8Gn8jm3UC2yf7uZCQ5Wxdtmv7yTyX
         Ji4LH3OnUFJ1JUqElJwQm7Ju/+EV1kMGKLe1os3YI7eQkSoXk/EfJ5ProUDtHp6KZyZz
         bcEQ==
X-Forwarded-Encrypted: i=1; AFNElJ8/jbg1en8cazJXSnSbdM5sqd7Ye3jjqUxsyk+k/k9pQs4xhO/yklkci6SjJo4Y43ZUCC6VBsEjkAY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1WBQtQIKO5E1jaKkv+NI0BAVhQAuGtQo1awLuPIytb/tEyPJ5
	8VrmBqKGTaAcDwSsL17noW42rL7XDTQ0O0teKmJe+q1dxqFgaheBrd8vV8uaO2bfNW9gHWTkNoJ
	udQbHTRn9qrvCVAhWVLXB2Lqu7vV9R2DLVWsfl7SyB7K/JnM3ehM8D3bNwzYKBeLDLL54
X-Gm-Gg: AeBDiesTKc+dBSuUT81DPr4exJ/YNxkQ0FIc8YO61GqcT8rbW48p+YaTN7gNDmspL6f
	JBKk0UCYuG9pJjpAHzk5W6wNmQ1HJwvWF31VE6+GeF1sNXb6OYRXFuUEwBmPtff1cM775eMErOj
	TvvS/270X0XD9wFIDsBWrwHagzcKXAO9B7MRM9CIy1YIHeW1pOnt0ImDgir+7ksWj84uK3nA/Al
	gsgZONi017mcb4tYWsHEWDlhVxe4xe1HiBtjPBT3AZ/4Cqjz6PmN/jJ8alZjGMtD6xXIaQtr6xj
	UC0QXAO0eYxs+00cppA9bvVvbiI3b4525RyLCEUXKaffsIndk0eldiyETmn07Sny5A2DUQLqgcv
	emLvuHH7fx5lpe2Y3lbKVpQSENepkWTf+R1WmeLpQ
X-Received: by 2002:a05:6808:1446:b0:45e:f0af:5148 with SMTP id 5614622812f47-47c892315e3mr5222656b6e.30.1777910815970;
        Mon, 04 May 2026 09:06:55 -0700 (PDT)
X-Received: by 2002:a05:6808:1446:b0:45e:f0af:5148 with SMTP id 5614622812f47-47c892315e3mr5222605b6e.30.1777910815307;
        Mon, 04 May 2026 09:06:55 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-44a986aa3a5sm31046424f8f.26.2026.05.04.09.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 09:06:54 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 04 May 2026 19:06:46 +0300
Subject: [PATCH v2] dt-bindings: phy: qcom,snps-eusb2: Document the Eliza
 Synopsys eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20260504-eliza-bindings-phy-eusb2-v2-1-fa3a1fd65ab1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIABXE+GkC/42NWQqDMBRFtyL5biTGYIev7qP4keGpr6ixeSq14
 t4b7QbKhQsH7rAygoBA7JasLMCMhL6PIE8Js43ua+DoIjMpZCFyeebQ4kdzg73DviY+NAuHiYz
 kxirnpMiUUpbF+hCgwvcx/Sh/TJN5gh33vT3RII0+LMf3nO25P27mjEdVF33VrtAiz++eKH1Nu
 rW+69JorNy27QslYr0g2QAAAA==
X-Change-ID: 20260327-eliza-bindings-phy-eusb2-bc4dd201444c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-bc6c4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1453;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=4Huk0DuHaY6HlT4dVeeaD0BtO+3KsuY9qan8oFOyxcQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBp+MQbqI+UNbLCUoFBJnbCncJGfkVG2nCDp2E8Y
 tFhpnq9fkeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCafjEGwAKCRAbX0TJAJUV
 VqekEACM2zQjPdCQz4ITm/KkwKDIZU85HIQhe9fw4wbgDb9un7eQP8pg/Nf9VdEnsCdGkNjLZ01
 unTeaDwkT1MXeHVT5tuPLbMZjksXQ61huIq34rfRwbUYDaU9G/hiDQgkGvhqP8ZcYeVHSaq+Psa
 HqLa3GJNJfaFYPiA3kmTuqXkdUQi1kuSKwRyFOi1GJpH4/XyCl8Dc6mubnBPKxKsFJSUcVG4jvp
 zYBMRV99zb6Vxyfp7pEgS55aExtR7SD4HFJ9i/13mkRkMaH0rfCQUHi9rFk52W1Fp4v6oHI/lL3
 vR7OHW0bBnM3YiTojFP4kekvZsERXetN1houenpGKLaewFi0vM9jdVioLDOd1MkW22XcCGFr4Gb
 lry6n95i5322uH+vKqR7GwWfpSTnFl9A+zk61Z3uq2COBPvtl/ZfqgNvS8bz4i0R0ePUKhommnj
 /Ug88NgLW1oZwdJ5pEN/LPfo6nZgiNhu7HQUTT4gg+gpggqFK6qKidfvcltLzVqOm50xfF8WrNo
 hqeORDZNyv69To6Kkcj3xjjAkMEP7fN3/53yGzBqk8dJ1OFY9UqgEPz/CUA4+69hu6WiQtc/hOl
 JetDouwxLXVTlU6U0CPFOkmfUIxQ+XwBdkIyL2J/LRPQz6PyGbcG1somVDlWi9yeC/J+zR7nXB8
 n7Ljv1U7IxVSUAQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=a7AAM0SF c=1 sm=1 tr=0 ts=69f8c420 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=gcnggjyPzmaCdwFRn6A1TQ==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=gb61f_RGkQieOckiKckA:9
 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: 8N5tHMx0McilmhT42tRhYTorBFywI3Sf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE1MSBTYWx0ZWRfX1P4wpl30Zptc
 GgB6NsI6oFgh0C81qlSxAcP/F9r7jboCqequ0sPo0CpARFhdnzQNpH97nxTKlxMIs0Bo7dUZDXN
 pKWetm2cRWv55TyBalGAZXSmTQSa/ITJVu1IEDIU8oCJNv3ZX0851Kb0N4zsKSe5L5gH8DtFn0Y
 3tnAcKCWJygkd4iCRq2WpVQSXKx2051ggbPQo7TZxrr017SS1cdrgg5Opq9KqoVNTZle0U9qd7X
 5pJkKzouVpq+teTNZbMFQ+F7cQJznAo8Vd8uFcx6CEeNlfvFdCSTLtZHJbarpYHIn+qw3lI8clS
 FIi9h4c7qslRSUDyZeP5AswEYnw+pXP1odpPmqsgJxh5Xw7xkjymX7gK0/hLqG3Qo+R/lUAeHm2
 cWYWQR+O4XCCm7uyXu7Z7oGHV7aaWP715MoDIeHz4lGJefnSKWn06evY84E5zL1Oq132xJYr8ur
 /fXEIEIHwC6NkZ8urKg==
X-Proofpoint-ORIG-GUID: 8N5tHMx0McilmhT42tRhYTorBFywI3Sf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605040151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_090658_063907_53222341 
X-CRM114-Status: GOOD (  12.36  )
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

The Synopsys eUSB2 PHY found on the Eliza SoC is fully compatible with the
one found the SM8550.

So document it by adding the compatible to the list that has the SM8550
one as fallback.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Rebased on next-20260430.
- Picked up Konrad's R-b tag.
- Picked up Rob's A-b tag.
- Link to v1: https://patch.msgid.link/20260327-eliza-bindings-phy-eusb2-v1-1-1f8a9ad6a033@oss.qualcomm.com
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 854f70af0a6c..096f6b546632 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy

---
base-commit: b9303e6bff706758c167af686b5315ad00233bf8
change-id: 20260327-eliza-bindings-phy-eusb2-bc4dd201444c

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
