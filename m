Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D4BCD342F
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 10:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T8RNhFDWbPLDHNKLoqhDRtGA2bu272IXOqABlwF1FUU=; b=2/qhv26pVWeEg4
	XgtbPNwQx/gJU44w66q0I14iJCq5Kp0hdmA/+nOcKgtmP/kkFFvxcTwtBDnZKjC6vNkNBygIZz50W
	au6MghAHoPCAZw8OVMd4QXYPLrD1lC7qwS2YNQWNW41vlp6e+w5o19KASoznBcEVXGo+juEPlfqQD
	OnVRpv2o57FF+e7oj1GHfdM4CXzDNmDVnh2tWHKkPT8SfNdLwqHKE6IXtiBE2zwQQIhbSK79wYqzo
	lkJl1d7Go4BYqDbvpQN3TTmsObUJ2V0SogMzH6n481nD+9QjnlTbr6hkhHEDrT/BL4QQ55vAKM5yh
	VCeWEE1JXR7YrrEPBn4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKD2K-0000000FteA-0SJP;
	Tue, 05 May 2026 10:29:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKD2G-0000000Ftd0-3h6I
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 10:29:53 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6458wb5I1346318
	for <linux-phy@lists.infradead.org>; Tue, 5 May 2026 10:29:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=YpJutWL35hOQO79pgLkNjKFA+e+/w1QnH1x
	RJyPQtUI=; b=iM0HERrvZbvcQazjOKU39I3UPKQlU1HWM/1RBenjJIaJ57sXkUB
	ZEUZKBy6y/UesHdwvKBdHvVt0uabIh52LLGCUg1y0nG0rYznbpMN/2i1Qykz0VyT
	LpWANo3mKAAz3LnMRcNstykebbT313NXsKhQsLJ/pcvroSLep79QeYkM4YwNSNLx
	W7feqOJfF530wxVf3Di6BbNHdWxeJSmsTJTGgdsIhmXvzQJ5KYdyZmFjI38mo/rV
	rVfrFb3vFEC+qPQxFDNyp2eXPrZpyEYq0q4YoutmAZOJDsbO+gouHnozkWviiRCP
	dnQubsa1EUCp8Bt547d84IVjAPjQm/hlOdg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxx2xbm0f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 10:29:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50fba8d8c40so130179211cf.3
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 03:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777976991; x=1778581791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YpJutWL35hOQO79pgLkNjKFA+e+/w1QnH1xRJyPQtUI=;
        b=Rf+4J3vLbZ0zfWqLG/fSa/pG8aoCXYyld0m5RiG7rGjbzlei9PatgrUvcA0vG8zHbK
         is7oXM8MpmzhK18tkUkafkcaavGQ85x+Lr3fgQSe/zw28lcZaFS3PGaE2OUaGvp5Psyw
         L4Iha8oz0IcpcDG6JT3mvCXrW+J+yKS7og714nKPF8H14+0QQa78wSok/jCG6RMvQwsl
         +he5s5QkFO/3+aIaoNDfi6Z2/pXcQIHbl+1dW24ijMnosA2gPJxur1bm+Gf+Brf/Xb2m
         KnkFgOaSKv4LaE52OHq0g9mCTmr4ZIDyz1msszIpM26NlrSt+Z/Rx9JYvPwGTrhP/5sB
         +Z5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777976991; x=1778581791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YpJutWL35hOQO79pgLkNjKFA+e+/w1QnH1xRJyPQtUI=;
        b=VUt9qMvl8Cgm4h1LdU2lQ1oNGRGAfxGUg546lNlGm907MaYcuY3h16u5BpdPKosNQs
         uIO0psWKlVSZB31+V7aowF6xAdZ3qJotnWsRBG2aJjtxJo8eA5OF0kxoXZXRdVV2V/Fo
         duLwXUR4wuCEk4sMG52+NvMNDn9Kaf6gX7XloeKYY9cYCdhqVxhFgyUNsB1UAplY1gNc
         5wNG6Vs7L95P0l0R8q2Do36Lu1fcF3oRCuwtBUuc5nGxozcGPZ/ntx+WlbSdSP27TyJj
         aDb9kAkLnF+kBkUhK0s0bIEl0HeLBlmlPQ2qvt9JR8WS/LMIazEKw/qszB4hBp0PLNvu
         dt1w==
X-Forwarded-Encrypted: i=1; AFNElJ+K6Ea0J7jY94ZqxegIBEwHBvRFP5EE9RsdhZxpP6g0GcXDbu2pGAZtzvxDEZaiEvJOredcE6z0LEU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0Sudn1sGNBv6UZdnalr44/HeyBbPZr6Af3o5sJYPLO/Up9/G0
	hymPbxQPOw3QkQZ6EsMQjxf7FU9QVPG50UqraFB9WKAwBn3svW8FgYZnfKFEbnDxnL7ukcFX8R/
	hbuR8T6PGaPhMLKm9W2mJ16fz9obsYsqeOAjbFFqb+fmG9eYbVQDEFUzqN87ZCChZhhDU
X-Gm-Gg: AeBDiesvFdsbsSZKEaUA1mwvL6ETbssDBk6VMpIbA7VxjkwdqU/+qovx3ITiLazs2KE
	62Wc5glKVuqM10qq1+GwHrK1g5SLgfMyri4WKO3ASPsUUcTEOi4esIK+p97VKnJCkS2sobHC2YE
	Vq3ic+X5YARu6/FFxhLYso4Ssm0G7RS+x+G7p4IGxabLxF+1vXAur5IFZQyjXqfwwgWlBcAxU+z
	mwouR5gJNUM37pejhLwLO5DHaTry42Wo4ZL6jxapSdF4x7x3Rev1qXpYmuXzm0ODJOqXuuaBfD9
	BmdwhlM5LBMQO5RoWDzjbAQRdcwu4ZTlgC2fETREjKUNWWexyc/RMTRoGljION8tpXmn8cl1bYz
	JYZFyDSsK4JFpA2OZ/7fVpWy3Hz5nnWreHjAwIzyMlIvYoKY=
X-Received: by 2002:a05:622a:244a:b0:50e:5a1d:8422 with SMTP id d75a77b69052e-51306a791a5mr33707331cf.28.1777976969298;
        Tue, 05 May 2026 03:29:29 -0700 (PDT)
X-Received: by 2002:a05:622a:244a:b0:50e:5a1d:8422 with SMTP id d75a77b69052e-51306a791a5mr33700571cf.28.1777976958191;
        Tue, 05 May 2026 03:29:18 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055960811sm3578592f8f.27.2026.05.05.03.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 03:29:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] phy: Move MODULE_DEVICE_TABLE next to the table itself
Date: Tue,  5 May 2026 12:29:14 +0200
Message-ID: <20260505102913.188406-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1194; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=CceqGBAt3HQHi2FZVl9KOxgIAhy6kFSJRIQ4s9Zjn40=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBp+cZ58zmutxVwxePNnXTK08c9YKhJd7S4y4ymN
 0pXAJOLVzCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCafnGeQAKCRDBN2bmhouD
 14YwD/4piVGXdf7IdAOlx90Nfw4m3ElbrNm816Umhq6w8diTFPbdwgo5DrOqcxPELcUExlaT/nu
 C9t3utMjJ1ffTv9u/y9e8bUkmQlWvUw8LaL9xhOJYrnPFGUl0kvPEOvOEuH6ThfINPwsVMVTH88
 Of6DCwKD7D7PKSb90Avjbi5fpKCOd/NeKeNs9bbD9U4M2nmB/cFZZKDcO0mJhtBxSld4xj/fgDS
 70siAhDgCZ1yPXW2qghqpypHgFwRfHa5N+IEPMk8PRbOutGF6XwnGGx1VQArfIiJ8jwrLCsvzD5
 2+UmOtcICDNacVe20PBLUEMpZpo6mDz6P5swUOZCDIGOnZhmQkc1dN3kBdJSs03ZR/++ayrpmJ0
 UUfjsq7ByXbSwMcFhMzruzsuWuqprRiaKNBjKC9196lFUykG6SVQP6U5vFtDKhxV/cNGPYeLTX2
 SEq8r1A1YMCadnbYdnucprUDC95F2yBJh3al2IEkj6MdJsGWGFrCaD1VZiEKkP0GveK6MK3PII6
 36nwfnMj0Q/LH0m04ptJKXcOFbSjqez6JJ7U4bTVqseevCzpb1hdonLzz1MTGmCRZNBYVP+CK/f
 Vx1AsMkpLcSYCQhVyIruR6Wq8YWytygzxZ45Bb8IUV3zEzkQFKT4GTC0gcR+FqBF3VhQxAuoV7M leGmvhWpFy24CpA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=U9eiy+ru c=1 sm=1 tr=0 ts=69f9c6a0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=BzP98TPolLMEYMmIy-QA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 6GYq5zUhOjyn4nfFLc2SRKWE5ISPbJO8
X-Proofpoint-GUID: 6GYq5zUhOjyn4nfFLc2SRKWE5ISPbJO8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDA5NyBTYWx0ZWRfX71uiTzJ1uXMa
 OYJZLjDX6TFQNMl+EIgXkvayKikZPMbLWHoHD7Wqff2oRJnkB8MeoSdxidmfoR0kFoI8LVcMc8b
 NstwXRCGzGC0wwiftoVKy/jq/1zpstrpjF/Ls0HfxtD8hl1DQHUFRmT4EnmHB37b8/HcwtkuohF
 URaXNjisO8lA6Hg37TIzS3/8uB4cbrJ9T3QDF9SoZb609hXupAN8ylYAOo1nGnaM9HFHhD1JKaL
 d5ztEzSFZUh+9Elan5wfle47akHuLA6FIcSLSZxee72vfc4cc1q2vgLAuKeCbmj+mcY68mtvlEA
 5v1FIDjk58F2xA8yJGdfi/+Kax1rnOQFH/F1lKp/4vKg431UU/Jr2ViUnfB3J2aCsglldshpYa+
 rz/TA5XvHS/+TzlrXbal00ugJWhN91pR+XaJeUI7eeRTfVfMdFDpplfQNgHfI+nK4wY8WSJ1ot3
 6qIK0AgvojkNhR22xjQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1011 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_032952_922448_2907EA72 
X-CRM114-Status: GOOD (  13.64  )
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

By convention MODULE_DEVICE_TABLE() immediately follows the ID table it
exports, because this is easier to read and verify.  It also makes more
sense since #ifdef for ACPI or OF could hide both of them.

Most of the privers already have this correctly placed, so adjust
the missing ones.  No functional impact.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/broadcom/phy-bcm-ns-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb3.c b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
index 6e56498d0644..9240600aeef6 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb3.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
@@ -65,6 +65,7 @@ static const struct of_device_id bcm_ns_usb3_id_table[] = {
 	},
 	{},
 };
+MODULE_DEVICE_TABLE(of, bcm_ns_usb3_id_table);
 
 static int bcm_ns_usb3_mdio_phy_write(struct bcm_ns_usb3 *usb3, u16 reg,
 				      u16 value);
@@ -242,4 +243,3 @@ mdio_module_driver(bcm_ns_usb3_mdio_driver);
 
 MODULE_DESCRIPTION("Broadcom Northstar USB 3.0 PHY Driver");
 MODULE_LICENSE("GPL v2");
-MODULE_DEVICE_TABLE(of, bcm_ns_usb3_id_table);
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
