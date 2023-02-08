Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B49DFC636D3
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 17:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTHTZ3Y9lrLO9Eb80MCrw9QS46VBugdsBiIgUK/kQ6s=; b=hMVDt3F58X/LsI
	CshYaeJwgc4WC4DY8FO3vKXOh2ujHX5WVJmxLspZZfSR6fXe+tNXptTdwOvJponSevOo0B3WaDmUn
	tviWfwlUPeCDw278R2YQPzl9moxx25fRH7FQtEUY3FbZ1TObRKl0P6/HG0BrrD00LTv3nkJdB3Bwa
	tYnois0z1vdDloZ4kG1o0tZk42thufKb2dPa1sjO8QEOsl8AcfK3KvFSlvsIvwJyPYVaWTPUlp9lz
	4opeb70TDloGbaT6+r5u33dAEOCuy/oVJ/fcMnKAXLW0PHNDrB0b0HhdhgCGr3W0PWnGXMoBiLFfA
	NkKnz+pA0Q1vHya38dEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnzA-00GPlV-5v; Wed, 08 Feb 2023 17:11:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnz7-00GPkS-MD
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 17:11:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 163BDB81EFB;
	Wed,  8 Feb 2023 17:11:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B848FC433EF;
	Wed,  8 Feb 2023 17:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675876310;
	bh=WpNdRqN8boUK96ynhlnTfxBli2Z0Znp3NmR7U3aHWQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mB5lAPvff8UpYMfbktih6H/JFc4oY+0gkkNhFDN36fBKupEXYRhT7/p6v89nXYMco
	 932db9K7qorWaK6+gAyg7QsXw7uskXVt43g/v998NjdVYR8252PbDhv2BjmpkogQPV
	 GjwffqKXJW54bItpzrgajlUVKTEaC3/gsRlbXl9jQ/1DtaICdGY4KYgx8s7MQwGzq8
	 z/kx3eJYiPi8S7AjCqy/sf3YoJff2tJlHNAMf/siyaOonOCFLUzxBKlU66fenCl0yJ
	 ts04MAjNXIr9carBooAK9We2+IgzJFj3QPoTk6LP99WwOFwnvkkPshkByLC06DCv24
	 QGsWXuiceJZGg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pPnze-00067m-JZ; Wed, 08 Feb 2023 18:12:27 +0100
Date: Wed, 8 Feb 2023 18:12:26 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 6/6] phy: qcom-qmp-combo: Add support for SM8550
Message-ID: <Y+PX+vluLtye4Zmy@hovoldconsulting.com>
References: <20230207114024.944314-1-abel.vesa@linaro.org>
 <20230207114024.944314-7-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230207114024.944314-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_091153_885311_46F03511 
X-CRM114-Status: GOOD (  11.94  )
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

On Tue, Feb 07, 2023 at 01:40:24PM +0200, Abel Vesa wrote:
> Add SM8550 specific register layout and table configs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> The v4 version of this patch was here:
> https://lore.kernel.org/all/20230202132511.3983095-7-abel.vesa@linaro.org/
> 
> Changes since v4:
>  * rebased on next-20230206 which includes Luca's SM6350 phy patches,
>    like Johan suggested
>  * added missing usage of com_resetm_ctrl_reg, com_c_ready_status_reg
>    and dp_phy_status_reg
>  * dropped the .dp_tx0 and .dp_tx1 for v5 offsets changes

Looks good to me now.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
