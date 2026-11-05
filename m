Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3B4606A334
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 06:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XMKYWxlq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=N7Ua67aA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=realtek.com header.i=@realtek.com header.a=rsa-sha256 header.s=dkim header.b=FOEcAI/t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=llgiFiRhBmG214XlWNH/GaPK2prpSsg/87HGuGlFinA=; b=XMKYWxlq1PoQfEUKMV9G9Gg1sn
	xaRfMKeziHU6gZI+bvFlGBw9c7XEd5wpapODIhLoLNO82v4u+ahpsexX1N77rYsedehPEmLEeLsaR
	0mGIWuqpYlm3qgZP6bX/7WeaBhqZC6g/fLsPuzWALc3oispe8m0yY8T78bm9E9XSCQvBrweZj34lx
	LCbMe5rS2+ea9Xh3w0lIW3vF3Tw+v5r+4CEfC2PHxm6gBD/2qcrPRskQ/bWdcQO3KOFUl/g0h0tYD
	HvHrVwmvc4dqy/KLMvZiIPtNgOPavlPq9/i3qCVAl0jfA+ahkVDD0A/BfONan9JztL5Xdpbyr19zI
	8u1Jq0gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOqje-00000007w95-05VQ;
	Thu, 05 Nov 2026 06:14:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOqja-00000007w6a-2AZy
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Nov 2026 06:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=xRNZ0pQNv0O4AgQe25xHeQd1/afXwgVq8ve3/6zEzsA=; b=N7Ua67aASfcjNTWHWvOChzlAlW
	f4xk+ZbJONc+SuhXgTXJRqAElMrSLLOEE2E5/dfDozw3XuerzVeUK6GOwLPMrr+PE2Fqtjkfjavtb
	pFNurAjOr/glgtnGi9pZOwTVlgFAtCBc0X7Qwvh3kQ0JjVTHwRi3jJ1S5z9YQ/WJLnk3dM1Ob3cTT
	6N3m/ZVlbwmqOLlPNTfVzoj6SGev8Io693WKjsMum40ZFIt645rBoi12VMbHlr9EKpuIlqQgKmHeC
	WpJcV9a5VnAFfobTSxDTQUhD79ZaDFtQ81fuYPJNsRAFvLtChFnetAI4bVJbtswLdt6X3c9el2JUo
	Ecs6Az5w==;
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOqjW-00000002boh-1pdO
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 06:14:01 +0000
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 6A56ChI12526563, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1793859163; bh=xRNZ0pQNv0O4AgQe25xHeQd1/afXwgVq8ve3/6zEzsA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=FOEcAI/tlG14NSSEwve85seR3xewsDtvND5Tbu7t2sj6uLzFwbA4W4kF28DyknAWP
	 qOzVbt/tpWg3/4PtPnvAupa1KbJDE6RgzF0FmkhpQmcwKzoGJksXkQxU5C8dBUYLGu
	 iOkLuZzk8BrCT0qbW6QBYxRGnTXBZlaCYZT6cx4xu2Ovaq+xBcdPV9XBNPO6kDaeFs
	 x9Lx/TtH7e8MinXDUDqQowZbba9ilrkJvglLUi+ziPIZW8tGeRajg/1IMHEqi37ISa
	 kZKW7FzlbF/xDcnvupnoGo8mQWsV1YeM+8vYrLxM4n9Q4nlTdsJeSVCeDp3yTlFf/p
	 LNyoDBZ5XIqIA==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.29/5.94) with ESMTPS id 6A56ChI12526563
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Nov 2026 14:12:43 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.56; Thu, 5 Nov 2026 14:12:43 +0800
Received: from RTKEXHMBS03.realtek.com.tw ([fe80::d2b4:cd25:1a3e:aca8]) by
 RTKEXHMBS03.realtek.com.tw ([fe80::d2b4:cd25:1a3e:aca8%9]) with mapi id
 15.02.2562.056; Thu, 5 Nov 2026 14:12:43 +0800
From: =?big5?B?U3RhbmxleSBDaGFuZ1up96h8vHdd?= <stanley_chang@realtek.com>
To: Joshua Scott <joshua.scott@alliedtelesis.co.nz>, Vinod Koul
	<vkoul@kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>
CC: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam
	<mani@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] phy: realtek: usb: fix the USB 2.0 PHY's port range check
Thread-Topic: [PATCH] phy: realtek: usb: fix the USB 2.0 PHY's port range
 check
Thread-Index: AQHdbGd3K0WzKIaqJEurOjghSm2EKrce/gDA
Date: Thu, 5 Nov 2026 06:12:43 +0000
Message-ID: <0cd63684f1ab4704848f317a96a4105b@realtek.com>
References: <202611041419.6A4EJBeM41365932@rtits1.realtek.com.tw>
In-Reply-To: <202611041419.6A4EJBeM41365932@rtits1.realtek.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_061358_871927_3C70E9E9 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Joshua,


> 
> rtk_phy_toggle() checks the port number before using it to index the
> phy_parameter array, which has num_phy entries. Ports are numbered from
> zero, so the check should reject port == num_phy, but it only rejects ports
> greater than num_phy. Fix the off-by-one.
> 
> Found by code inspection.
> 
> Fixes: eeda494542e5 ("phy: realtek: usb: add new driver for the Realtek RTD
> SoC USB 2.0 PHY")
> Cc: stable@vger.kernel.org
> Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
> ---
> Prepared with the help of Claude Code (claude-opus-5-5), which drafted the
> change and changelog. I reviewed it and tested it on an RTL9311B board,
> where USB devices still connect and disconnect normally.
> 
>  drivers/phy/realtek/phy-rtk-usb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c
> b/drivers/phy/realtek/phy-rtk-usb2.c
> index 1f08b151d90a..e43ad5fa6d64 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> @@ -670,7 +670,7 @@ static void rtk_phy_toggle(struct rtk_phy *rtk_phy,
> bool connect, int port)  {
>         int index = port;
> 
> -       if (index > rtk_phy->num_phy) {
> +       if (index >= rtk_phy->num_phy) {
>                 dev_err(rtk_phy->dev, "%s: The port=%d is not in usb phy
> (num_phy=%d)\n",
>                         __func__, index, rtk_phy->num_phy);
>                 return;

Reviewed-by: Stanley Chang <stanley_chang@realtek.com>


Thanks,
Stanley
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
