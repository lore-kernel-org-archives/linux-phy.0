Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EFB606A327
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 14:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TYLGUGGp;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=1vZMMFUR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r6LzfNvY4Ma2W+LMpnRVPaelyMErP58462u9FVZpYjw=; b=TYLGUGGpV8dbZ1s3e+VgB8rEl8
	8p/90+jpULf5vScGZ0StX0pbZ13sD5OIs6UGFtUfJU+ZnftUFH3RYuspRasBXnGjVhnIPCWyKkVkM
	yL/gzqK68sg98/ep48/VLHM6MHKBRP8IjSBbCM4BDGipvefL0bTDpbzO26ojWQM2LnGWRCty4SSze
	BLTiIM4uBqpDlqiCFUM1vuBsEQDI5FfWs038aSRERUCMwp6sQxmM84+P5Ffs6Kr4Gh2STIOfGKJnN
	ixs9iiCG8oZOI0T1dkvP46iqPa6fFz50R+DhW7TxfwVohW7GcF0XEiyOFDMc72VwXFqkcDGo+4wDn
	LZ5lobqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVrQs-00000006jYx-1Sev;
	Tue, 24 Nov 2026 14:23:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVrQq-00000006jYh-2jwt
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 14:23:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1358F416B6;
	Tue, 24 Nov 2026 14:23:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD041F000D1;
	Tue, 24 Nov 2026 14:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1795530219;
	bh=nKFAQ/eQi2+pKN1nmF1ojcPhRlz5R78v/XFET3w6CA4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=1vZMMFURAQstEAN6/qM0Pgk2S/TZOWOPkhpVXU0kKW1xIE8Ue4kWLmiRAJhgtRT0N
	 sOT7euao3S+uLTaQGhgYnKeo8zhdHNUHM59RhT6D+CZZgCt3vIzC2AACBLvpT5l04Q
	 TEOtMl2ZXhVsQwgLepaW9OJExmWGpEj2lxpnaCKo=
Date: Tue, 24 Nov 2026 15:24:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Message-ID: <2026112445-draw-enzyme-628e@gregkh>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
 <9fa428e0-f685-410c-bcdd-319fd427d2cc@app.fastmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fa428e0-f685-410c-bcdd-319fd427d2cc@app.fastmail.com>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 24, 2026 at 10:18:06AM +0100, Arnd Bergmann wrote:
> On Sun, Sep 13, 2026, at 16:40, Krishna Kurapati wrote:
> 
> > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > index ea47975e288a..038c2b58bbe1 100644
> > --- a/include/linux/phy/phy.h
> > +++ b/include/linux/phy/phy.h
> > @@ -21,6 +21,8 @@
> >  #include <linux/phy/phy-lvds.h>
> >  #include <linux/phy/phy-mipi-dphy.h>
> > 
> > +#include <dt-bindings/phy/phy.h>
> > +
> >  struct phy;
> 
> This broke the build in linux-next because there are now two conflicting
> definitions of PHY_TYPE_PCIE visible in drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:
> 
> In file included from include/linux/phy/phy.h:25,
>                  from drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:15:
> include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
>    15 | #define PHY_TYPE_PCIE           2
>       |                                 ^
> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: note: in expansion of macro 'PHY_TYPE_PCIE'
>    47 |         PHY_TYPE_PCIE = 1,
>       |         ^~~~~~~~~~~~~
> 
> We probably just need to rename the enum values in phy-qcom-uniphy-pcie-28lp.c.

Already fixed in my tree, should be showing up on next linux-next.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
