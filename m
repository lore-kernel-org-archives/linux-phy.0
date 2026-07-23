Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4AFC531C7
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 10:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/NsoKropXE9Yvr8Y4U0LEZYQVI3eAxqibbsDfNsjQY=; b=0+T2esvg0A43v+
	EmDTwHmygXG66NazIEcEL88c878cPOLVWJS0SzG2JD2IDWkmiO36hFhUxToDX0go33KsoD6G15R5j
	zh/3Ai0/ijzH80slFsiarXdS3FQUuEg7RJL59+Njs9ajjRdtiHVJZF0ylixh20LiAjifL5FnW9Ybq
	Fb9i0MyTYThWfXfMwmXL9Qhqpsh40l8juzUOFHrxUPxyVg7UfXYB9jP6ztbph5QZfP1vEG/5uR4uq
	yc52cSe9TZyBg07Lyy2C0mUoAUsdPeztB6Ctd3I68bQkN1gpTS/6bBABmGb8FW8UUfNzsVhTk17Hi
	ivLQfIPWg5w1UBW5W7ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpn-0000000E38Q-3aNo;
	Thu, 23 Jul 2026 10:39:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmqpl-0000000E384-3joy
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 10:39:23 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N8qX69467201
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0xuxwwHnpi9Fid00zPXEaRRM79uQz6jYd7duTu4iLeQ=; b=HM2K9ao6bh5VGGEw
	klLAt9olwBvQUG+TOCJHccBRhVHgCbhQnwHkPXDhR9FnGs1qxFJqGLCxqa+7ZN9v
	PA1e4/p5LwWJE9thRYuyR6AMTlQbc2JyWKjVz6uGF5Kg/ccTsIMGv+7APxnV/REt
	dcVqLuCmJnzYcZuj9unOolcsy8rEmwyqkBZTZVfZsUiLi6EBrgozpwcWqfegly+I
	hSJ+OZTipjQNqq4UhrpPWezMcT/vs4d/AD5X4hIsWmKgcHdfQZ8hWBVMo/Po0BMu
	ZDw+xd0AmCpjDRapFpCJSWn+O4GXA8YtSNunkw1NaOurayYOsPS70MM8GyCQPsxi
	AyL07g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk28xum3c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 10:39:21 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8485d853b08so1329880b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 03:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784803160; x=1785407960; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0xuxwwHnpi9Fid00zPXEaRRM79uQz6jYd7duTu4iLeQ=;
        b=WGwtL4kgL7c0jU16nEmG99e5xOmUc1qVKHSnEWXEBwDRZMUEX0KSG5qDwiSj0vILDr
         5pxuumM/RrFLAxL4gBZYm+Y0br/IDHf7L/7yZHkhpiV4CiL87Sr7Jayi7Hf+fugrF/9J
         VJiUaP0MmhmeRhh+0DimDsieT/B2tandsbI++XD/AyjPGpA2eGL4szUCRE72wk1xekdH
         wxzJZMbze+kQPKmE+25g3/O18WXy32erMfTVgMMf/DGajValcUAo+zyrYUkjWqwFTPFR
         wrupUZl39Q40HRDd43XoBABGVz9zkTfJz5YLoYiH0fkc1mEkwWpY4OUT660t8jExAxb9
         Tbtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784803160; x=1785407960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0xuxwwHnpi9Fid00zPXEaRRM79uQz6jYd7duTu4iLeQ=;
        b=tS+i/rBjAI6Wqpy1IjEymUVGi9J+iqiYuCEpJ+bPn4i5kA8ErSNEZXsD4mju/1/qt+
         3GVaN+eJ9vz6qsr+sG45FSIPgN+nVlnmPlpfz0XIiIT0+3xL2qEDhLhrHiQHt8olFcf3
         vnvIIamFyQKQpl8qDlmHf3qPp5zBA2G4AbN+AWoj9+k+a9N/f4YzU7+7jHJtZgnDnmfa
         d4Y0lyn71zVa+r/l2DXZIkoXlOWwrarDifsN/QQNjBIItR1fARMNaDEIw3rPYhxxfN7L
         o+0UfXCLd6oVO4eXx1uUHqyFOE3ig4Veb+owUIlbwVVIJ9JAe1IDQ0yKjSE7SofZGQQZ
         hjIA==
X-Gm-Message-State: AOJu0YzcCV8CeIEWCW/HfvcfvXJ/Nkn3zd9ysvjFLR9FCSmaPCWFMcWo
	aFG+kI1zvL0hCMBtAR8dISmhdHPJ2uKUo2AgCjtgJCf1HeojVMAIxxXneZbvNr5BmHKcyAo1Nh+
	ErPSt8tUoEGTN0Lc4r0XbbBo3Uy38fWKDBQQbAUT07I9iek/lSP4Atijfl/nBAZfIaSbsjAfv5A
	/A
X-Gm-Gg: AR+sD11WdtosaqFcIM56AwFmSx8ddtcdEkEH9C1gNpwdOzudPc/RmOdC4GpJgwjXja6
	ahhDCWsoFxmMkQn9mUOaluTbva+OzNwuje9w6TdUNl+v9m8gnTvJp/MtSkRpdHbl4GmkWmutVGB
	RJPWNX1X5PXSzrrXPEAwOjUDudgZTLP1C3W27+S+3XC2i0MclghmvE6UnhMeKfljwsqaUm1JT5r
	B7sTBTO4kvPf985IB+HMEa5tXyVCHnb8sxZQXAXf2waLM6M3cIpqEr4lgiwpSYo+D2YT7KpepAg
	kkbovqKP5Iem7rjVWw0oLjNjsi0oX01VBqb/ClA3uHDWatUfPUQDsFGrC/YuYoxQDxdDB9248XW
	OWLX5nn/N1bZcN0kmPs4p3mEitA8WGSVNqXjHvzgOYe5mXVkgT6+9/cGZfVaKEhIZySYHkg==
X-Received: by 2002:a05:6a00:3305:b0:84e:165:da65 with SMTP id d2e1a72fcca58-84e2c244122mr2705007b3a.64.1784803160522;
        Thu, 23 Jul 2026 03:39:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:3305:b0:84e:165:da65 with SMTP id d2e1a72fcca58-84e2c244122mr2704979b3a.64.1784803160120;
        Thu, 23 Jul 2026 03:39:20 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e17604a46sm2864469b3a.60.2026.07.23.03.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2026 03:39:18 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 16:09:04 +0530
Subject: [PATCH v5 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
MIME-Version: 1.0
Message-Id: <20260723-eusb2-int-handling-v5-v5-1-f32ea6c1a318@oss.qualcomm.com>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784803149; l=584;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=PBlvVsvGr+bykm8WnMhzex1smC5AH7JlTemQnJwn/hU=;
 b=Ig+LtmVTjlW6psaSiwo9MZgmFk6Unrs5ipwJbEhMmqnVTfmBdsIEdjhAECedPrDJ4SusZa3CS
 JCHXuEPmk1WDAs28elvozcRyYLraE+9PDQVsje9UcyL7GuDG9dDcfyi
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: 2e3JnokDwLNgO0b5r_-z8xm4iQAJ1l_-
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfXxsQVu9zbR9Wz
 gJhWncqczM3dNTxszKzEz1W0AQchuDdnJ82FfMbUOcmXurr9mb6rAC8BvwnIFVVbCPhnSDcErgv
 GP5fzLU+JGlGTwcyzl1NaEPokUjhuZQ=
X-Proofpoint-GUID: 2e3JnokDwLNgO0b5r_-z8xm4iQAJ1l_-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDEwNCBTYWx0ZWRfX2BoYlOEDGDmM
 gcUO7yVTGsYo7f3Wgo7pJa7psC7msSWNP/dnUA3Er1YQ8DzQmSTI5d8W2WoVCoEylXStb7qNOHU
 vZPK7qXWYsiTqfHwWK63Ts/3YuxkSkfBnrqXE3EWsSy1w8S7fUeFeGAwHDtwpb8qKpU2StGFRsy
 z0AEGrKWsFXhaP2nYSt74SaM7jquvPUfzk2v88Sdk72PeQu3NFBxosJl5cbKsN4RYCODLwxCO0k
 yFj0KUVx0ho9hRIsvyWR5BGNJ5mv74/NGl8ebaddMEMWYt4/6JhkZUzWsWUUIWD0rHbpCCAOZUe
 j1at5j6eisw5G1XK3/00f+yLLR3fbVZDM9R3wF/7gh6hazb8IsE3t45aOj0N7O/LauFZsA5Ki/v
 TC3SgCoFOr4G+3VlR94SGOZnMteoyJrOfKyLGMAVc4lLv5Tw9s6erOWC2ntJhce2D8N7e87iLdT
 qwLA7naIzgrWiT55qBQ==
X-Authority-Analysis: v=2.4 cv=WNxPmHsR c=1 sm=1 tr=0 ts=6a61ef59 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=1husMANfLlrnribazw8A:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_03,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_033921_940221_71220808 
X-CRM114-Status: GOOD (  10.65  )
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

Add definition for EUSB2 phy type.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..555a022c8c0b 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -24,6 +24,7 @@
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
 #define PHY_TYPE_XAUI		13
+#define PHY_TYPE_EUSB2		14
 
 #define PHY_POL_NORMAL		0
 #define PHY_POL_INVERT		1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
