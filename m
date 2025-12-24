Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C0DE7544B
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ICZY6KzmG57TT/9yinE9CB92QkbLMg7q8NI0T6YqQwo=; b=IewlF+2kbT3Mx+
	Q3PEl0yPXd12YQ3O+hT+MIjFHpK7cznRpROeZw4BTVoovT/A+vltM9AOyacVzewAQD1hIOauKg/G+
	XQ737HCeBiW+lhxsYe9v2jAj7RfgzEAyJCC7++IcdPOBw9WDBjBH+ufMEId2UBU4ZYdwbY4mLHmwM
	f5MM/WUVwgB33YPQCdCFDuNEcmj/fOLh1f85dUJcEPoFrWYlZrHrXHvJOfNplyO9RdrHBRenF9hQd
	yKkPJknZgE4Ex13z+2WAB5uxXFJk0TFMUK+INIMEQ9qBqnER1WIr3dE7cAoy1qMD5a78z2lDt9Sa9
	Tld7tHeFuGuQb8VxID7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYOE1-0000000Gnff-3CsQ;
	Wed, 24 Dec 2025 12:44:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYODw-0000000GndN-1ErF
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 12:44:20 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO8ldln1206755
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 12:44:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=tCYzWdff7n1KF50nzF4ylfg2y+m/Sw+ZFz9
	Y923Lo20=; b=F0ZihYxaQcoZFAOjRn3WqsZ0HEPDYsp6xSBQIUn+gBUeRPBSLTj
	W3hckciIXGCzUWwP1vhewhbcwllb+M3TBpkJKfccULyzx42fgAmHbFzDvgXcDs3D
	Pjk/xFYoPlJ+LvmfE//EMDd7D1uRCZWLSs9bFK/m/bDFJVJKZxpZbo9IMLVN9+u6
	s8KZhLloSigZHynwuz5oHJ8q8LiJhIdPCvCCwh6Qm5MlSCl/Z4lhSqAViTWUzhL+
	55fSEEFwRx0OlCWtjDAHbHYNdYzvA1QchaqnPOWxzligtYOSmuEqcilLfbNr0uxT
	DZWxKXi9+VDyuzvcFw/EV1s4X0YVZ1zqcPw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r24c7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 12:44:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1b39d7ed2so128411161cf.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 04:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766580254; x=1767185054; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tCYzWdff7n1KF50nzF4ylfg2y+m/Sw+ZFz9Y923Lo20=;
        b=dHRBZQi9EqMhaOJbgd9mhGArYLPlZE4AfQR15Xt3OTcOCSA+hcjBDQxz/wH7HCo5+A
         ozQGB+IHLrPWO6DcwpMMmvxF+HPAGYjI1ZE80AINkMxo/uGHXWSRmWQdG4quD5ss0rxP
         PnHVxNpvkoAeibAhi3DkQfgN5JkaWm0AnYLr153tU7rZnvFJOMiGF/0fc7LtuRVowitM
         5DvwxkgYjBvladBBuh+xQ4XNWg6wD2mPtUWf5kfouKC93VWLFZaH5L5/8m5Z/R5/qOEo
         nnSZy1vfVQQwRzWwrcpWSmdusXv4rNACHPByidXMdegqr7YnbceqyiwqJRMn7xthIOcV
         Dz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766580254; x=1767185054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCYzWdff7n1KF50nzF4ylfg2y+m/Sw+ZFz9Y923Lo20=;
        b=CXLG9qrFv36UDEp58VO4A27TLdqzcFVkIRhJG13lII5lA12ptBhnEhG56jOTH2j3VU
         u8MMWATSMn+1Lgd2vxRS4DF8uYDHVt0+8ptlzW0tjP72/d4kzCA/6fWw/ucjuSo3RLgk
         I3fXZgz2dGSjxMeGgIoJ2oXrLP1IsDWuKQ1sl6dX2iNseCeFZ5+cY25aldE850g2bUyZ
         q8UQptb4k6Jt1qPVfmf/w5B3Ol6L3zVsGz0kskAAu29hbmT+g7GDj7vE+FoeNhfFvBji
         hM8DyNhXJ/D77W/VYWLHuLO/X/G1G5ZRO0FV+bqcjf2UPb/XEBJ0ovQqKuHVPGRUKiFi
         SA3g==
X-Forwarded-Encrypted: i=1; AJvYcCWw6XuxxT9a51H9AqXziv43me94tjNzWJoKytGl2KO4WwMdy//2++TxqeMpXdvyYubZ2AJnnoO/Lww=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYNuZCONDdZePtUpe6wQKYq0IcBtiO70pczZiqCWq6UK84WhyI
	gdUjpJb+itZHYNswO6utQfKm6RG+QTHE7kiRQufiwnJmC01ZLBfAsepXsXszMZr54IUUOKS75jg
	+ZRlVPwo+TBnMtmJr/0J8cumEfHW5za0zr/n0CyzMop20msw9xAQ9rvMdazNNy/LZz+svuXQiQ5
	cK
X-Gm-Gg: AY/fxX7KeCBlPvXGJcmGPGfbF3LN4+BTuKrV+zb5jSUMMPBl7bIhzJE4RRDJz10hf8c
	yX5kH0Z+ltAxkTV4OB6rl4SGcfF+LH7N4BAeXnbsaKYhQUy/DVy/lyCeQz8JGsftCajdKoAjGTv
	QTGbCdqFZmgXZYK+falTEQrlJ8MSObuaiw+wfSHV9fztmSsOcE4psfIikymy47iapzubG0BQFgU
	MPoKEAFWB5TvDxz11LTP6UGoEnctR07tzSO5DTIpuKdjaKGr2dBBuZtG4azvQBqpbTDyJYFsQ07
	MtJHDfqtZEfCrwKuPoIfA4UiRyQz3sROmlfj3MoRHKUcxS9iH/gv7BkE6BvuTnaZgLhgypTW+cF
	fna07dCoKwsKeqLssNXunZlZciMywlkE7NDTfJ9gP9q5DK3PIn4knPHBIVJq2LtGKleBOTg==
X-Received: by 2002:a05:622a:410e:b0:4f1:be70:7a76 with SMTP id d75a77b69052e-4f4abd8c6afmr265450951cf.49.1766580253749;
        Wed, 24 Dec 2025 04:44:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYpVNHB2iL4mAksYmUA/+LVLmMSYzWNCSBH5TsAHz3DLPgXD1ip8b4uJpmz3NjqhBYB118hw==
X-Received: by 2002:a05:622a:410e:b0:4f1:be70:7a76 with SMTP id d75a77b69052e-4f4abd8c6afmr265450711cf.49.1766580253411;
        Wed, 24 Dec 2025 04:44:13 -0800 (PST)
Received: from quoll.home (83.5.187.232.ipv4.supernova.orange.pl. [83.5.187.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b66e2sm17049203a12.34.2025.12.24.04.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 04:44:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/3] phy: rockchip: usb: Simplify with scoped for each OF child loop
Date: Wed, 24 Dec 2025 13:44:08 +0100
Message-ID: <20251224124407.208354-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1300; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=yA8n/3N51SU6FcQtGBZRLprm1g3J/2wXk4j1/Hxk46E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpS+AXzi0JHlvHuya8HdxoNphQ+7PXvo/kd4CRb
 fU5Vi8dLGaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUvgFwAKCRDBN2bmhouD
 1zt5D/4mIT+5DGh4QTJOJAtVc8flCOPHdTRs1c3WZysL+yszgrie3PwcIok1qWMW7cJMMPWNT3V
 4TCNmg6Cg+HpzkIo14nqPev/wEPOHya+7XA8DGo9MTIBDPu9UKAxtOiMG0948W64Yn74882Wqc6
 0zUpQbeAQSEI/5+AI9HFVs1qDlm1b9TBWTrhJhQTvoj3ApozFNu6gMumjUIXojKzfR6aDa6hiUD
 zWLB9uGJpTd9LtmNR3AoTwZwbIeZIHFDOHz2tODmjbU2ZsQInsfrnK3pa7sm7ekfWu6vezxntgR
 i04R0OIwMPWPsM9b+nvl+J/c4Sux45DHA776oExUgl5umVDAdhJbT6kKSeM8260UZvKV20/nDmw
 UvLiMu/OKLAjEkyXVrLzrQ5V61IK9yCobE54QPxbGrc8DsioaGdcyf5pAbCNU9WYV1XaYbZKUnM
 +nLxLdW7Q9gIwVngBVtocIfpknpbhAI/aX+Xm4PWKe1I3AsGOCq5ZyRAa4kemP1cldI1hkBIxST
 hlpOZ2QGSSSlpy4ZGWqIh9qd8VsjZE4wfF4jMhh7AHAVLPDWOMwBI+50BhrN1OTF6GhGYlDEFtR
 MgBoPJLp4xfNLJVOaqz8o0Zi6RAwWL1HwKzRSZ25ObBzWGCPGEdC6M63yIn9n86x0wAepAmtJh4 x7pWx8msxf4muoQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: xq2rMAvEVXQwgZpB9cydLyJhSiZ8K3LG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDExMCBTYWx0ZWRfX+EkNueTZ6HWV
 n25NVVJBkW8DBeyPJS1kJFYfyRjk5Ar7nvPJELcoYkBA9PmAv/PjgREm0eym7dV+FpmwS9Cq08g
 3i5SPKmApmqDWrdc3qN6IHZarQ3H3pBZLPGI7AYOJM+cnE5TdsFfMoGpZ+41TiQaaDTQu6YUxO1
 rGBotiA0rpirYBANby2cpbfBEJdSN0nD5JndjoRhJlUu7JnU/UZtS6W3qZWsnj7OvoyY7PkZlXM
 MF+RW0F8gPTQ+68gII7hcLytvtemIgvfvBXfj9//YtQViZwNZTlrqxgD9TOF8tvmy/1YBR8upx9
 jJ4AzksGzAbylt/LMTV8uxT5wM3hCGmD6TxAlyfl7/BiE4UyEBcuCrMlbYyKEjpZM26yMuWoW/E
 BqlYytPaJnrY9U/HM10BeWXKaYijSKkWRqPqjdw1p1STKAQ0JEdIjUQTJTu//USGrMM5icdvEeS
 c3jNTGPyEQf07PRj2iA==
X-Proofpoint-GUID: xq2rMAvEVXQwgZpB9cydLyJhSiZ8K3LG
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694be01e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=urQ9wjG1USoGuMoDBEOPbA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ed3ano5rc7BESD-daDoA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_044416_479352_AFDBAA12 
X-CRM114-Status: GOOD (  14.00  )
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

Use scoped for-each loop when iterating over device nodes to make code a
bit simpler.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/rockchip/phy-rockchip-usb.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usb.c b/drivers/phy/rockchip/phy-rockchip-usb.c
index c3c30df29c3e..cef96739cf3f 100644
--- a/drivers/phy/rockchip/phy-rockchip-usb.c
+++ b/drivers/phy/rockchip/phy-rockchip-usb.c
@@ -446,7 +446,6 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rockchip_usb_phy_base *phy_base;
 	struct phy_provider *phy_provider;
-	struct device_node *child;
 	int err;
 
 	phy_base = devm_kzalloc(dev, sizeof(*phy_base), GFP_KERNEL);
@@ -472,12 +471,10 @@ static int rockchip_usb_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(phy_base->reg_base);
 	}
 
-	for_each_available_child_of_node(dev->of_node, child) {
+	for_each_available_child_of_node_scoped(dev->of_node, child) {
 		err = rockchip_usb_phy_init(phy_base, child);
-		if (err) {
-			of_node_put(child);
+		if (err)
 			return err;
-		}
 	}
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
