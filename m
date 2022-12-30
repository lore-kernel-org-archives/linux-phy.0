Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F0AC4167B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Dec 2022 12:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnKAMVqcF0Tc8gnQYcgeaM429MBlETBB/YgwXvLEk54=; b=CVAQfaKrrTrriD
	/KEof7g9TpmoqcWT925d1gjLSQ4TLb63rdZV4LT6jw6zjgSoHnQTmUbg+cJWPaom4rXswgCBA3AqB
	5g+jS5ky5przhfYTfUAf4DSx5NuI/mgXkmC4PzHdyKUBZjJpE3V+GjTl9ZMWUIxkbq1r6rthxSSjq
	yQhTlWRRUIjA28xslWhmXK7f4RSABMOP4Ykdfki8YM4c7e+fSne58NxCW8jTIBsw0HuSVxnNxBqd8
	X8fye6FsSLtFpMQX8iy9F8G3gsXzidoBiBCKx7A5jutqminrCQnqOm3eDgXBUnxQfOYO1nqT5EG2b
	+4VcTvjcgaTn5o8n2Mhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBEE8-008sdG-9o; Fri, 30 Dec 2022 12:11:08 +0000
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.80])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBE9A-008rph-4k
	for linux-phy@lists.infradead.org; Fri, 30 Dec 2022 12:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1672401955;
    s=strato-dkim-0002; d=gerhold.net;
    h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=EwBEUtWQM+CIXSqRF+omnXUkb+ypVnL3yjnzwSrntUs=;
    b=FuLbBcknLwS9BsNPXPu7AnkJVkRJDpZBWdIpjR2Cd9PREzRZJRA153ksJ6Kd4I2Mt4
    e1T/PYVrPRmE5a0Uc2EjwQ3Ox1OklSzbjMY0cLP8kz1TUCYKJJD8U5De1J54m+sOBgH2
    mtWjfyiimfvju5Jy/DO2wKLt7UB290Mx3w8fCWByUXbbSKrb0zBmHa3gle/vWuyVLeXI
    Aw50xM7/GwubXhtI/MP/UoGRTG+7UnNyvyyNbyKv/1V0wYTw37HjcNzcrqfkyr0ghc7R
    UMP7PprTgS4xJpzqgWVKgv0wH/yMRnPUbH9VzoojsDFNBAxb2lGf2NqEy6kfETH11HtX
    UzdQ==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u261EJF5OxJAhdlWwfOntQ=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net
    by smtp.strato.de (RZmta 48.2.1 DYNA|AUTH)
    with ESMTPSA id Yce349yBUC5qYxl
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 30 Dec 2022 13:05:52 +0100 (CET)
Date: Fri, 30 Dec 2022 13:05:51 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Message-ID: <Y67UH0xfTPH0GN+S@gerhold.net>
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net>
 <Y64AfHcUw192Pyr6@gerhold.net>
 <6061938c-b830-2fe0-2f4d-368e34c33676@linaro.org>
 <Y64CaOzWZXERrvkz@gerhold.net>
 <cdcef656-1ae7-fe8a-a4dd-3547d6395b33@linaro.org>
 <Y64Jgu2o6aJV4ggk@gerhold.net>
 <da671da3-61f5-ce4d-05aa-76f3f6ae12cf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da671da3-61f5-ce4d-05aa-76f3f6ae12cf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_040600_351279_AADF531F 
X-CRM114-Status: GOOD (  11.55  )
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

On Thu, Dec 29, 2022 at 11:38:04PM +0000, Bryan O'Donoghue wrote:
> On 29/12/2022 21:41, Stephan Gerhold wrote:
> > That is still good enough to replace qcom,dp-manual-pullup though.
> 
> But there's no requirement to tie USB_IN_x high if VBUS is not connected to
> it.
> 

I've yet to find any device where USB_IN is not connected in a usable way.

But as I said I leave it up to you - it would be nice to have a proper
solution for devices where VBUS state cannot be determined at all. Those
devices should be rare though so if &pm8916_usbin works in your case
maybe the time would be better invested into other open problems right
now. :)

Thanks,
Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
