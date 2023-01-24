Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EED84C25B4E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 07:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrSb+RCQS6Kvx2wAtZTTvNVcKNv22C8qJch8ugT9KVg=; b=mFaO4lCRI1IdAE
	bGnDGD6Uu7FTgz1YPZI5Ljo+xw5UJLCbgSF0pUzb76jD7gF1JOXCYTMMnSnvJZDLN/DB7MAmTK05K
	+3YxMxxsk24MjKB45YbRIut8FofHAhM2XlhAhh4JmpcDpiDP5TZSDMvXMZlwohrlb0b3u8ufiP54s
	XKKy/X0MA8LiUlF1Sj1sgyd/Z8a561XTGAULAhn8f43IitFC5EB/FZl5Rvq105L3sKpmhQPJ/eZ0R
	K9BF9hmfPGNedRW0K9o5Yr6PAEaqfrUq8KK1MqgTgd/4MM7dn6LTbo94w7RQhJ3l58vkF+8wEka1n
	aHwnuPJvTF3AFgwR0lBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKDqJ-002fBR-Ct; Tue, 24 Jan 2023 07:35:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKDqG-002fAk-3m
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 07:35:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 748EB61213;
	Tue, 24 Jan 2023 07:35:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D06F1C433EF;
	Tue, 24 Jan 2023 07:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674545738;
	bh=pDKgWUoua20YmE6cBGGrAAjwPz/aziIlCSE60NBy7gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XrqByYokM3qTW2JuVOUIiaNnz5AGptMJoXAau5XqV4NH5iTKQZaFe9t7W3zn1l+pj
	 1H2D0aohnobycL5To58trZ/FbiYeLbSh29wJ9caRRAF2BUFaEhLj/zC6fOokbBOogV
	 TMKporNpvh92G7KchymYu1Wr7QmK8ogJbaL9H8xE5U/3gSYTIDaO0xp+5EtLb99uSb
	 iZLRc8QMxbRODwO/yJYg/evGvPZHGNJ5/wdi3K1vBGb+Hpin31qLnn16EySgU+NS6+
	 z3bPX6owF/m42+JaFoWeA6Bjcj3zXtpWkjXQfRSndkIldCEkCpepYJAVmIZDHuDH+b
	 IFMX/x26jC7bQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pKDqD-0003fc-Ql; Tue, 24 Jan 2023 08:35:38 +0100
Date: Tue, 24 Jan 2023 08:35:37 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom-qmp-combo: correct DP register offsets
Message-ID: <Y8+KSV/0Jk9nnntK@hovoldconsulting.com>
References: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org>
 <Y86TDYOKtpcLdZYx@hovoldconsulting.com>
 <CAA8EJppU4nQRYWwAahWtjrVbU1ywF4P+zxHs1PZm98bzKswiZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJppU4nQRYWwAahWtjrVbU1ywF4P+zxHs1PZm98bzKswiZA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_233540_251551_2BEE9075 
X-CRM114-Status: GOOD (  24.95  )
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

On Mon, Jan 23, 2023 at 08:59:48PM +0200, Dmitry Baryshkov wrote:
> On Mon, 23 Jan 2023 at 16:00, Johan Hovold <johan@kernel.org> wrote:
> >
> > On Mon, Jan 23, 2023 at 02:08:07PM +0200, Dmitry Baryshkov wrote:
> > > Correct DP register offsets used with new DT bindings scheme. First, DP
> > > TX registers reside in separate regions, not in the same regions as USB
> > > TX registers do. Second, correct DP_PHY region offset to follow the
> > > offset used for earlier generations/bindings.
> >
> > No, this patch is broken. SC8280XP is different, doesn't seem to have
> > separate DP TX regions and the DP_PHY registers lies at a different
> > offset than on previous generations.
> >
> > You can't just pull these numbers out of your ... ;)
> >
> > This is the only platform that I can test the DP part on and it is
> > working. If that happens to be by chance, then you need to blame the
> > commit adding support for sc8280xp (i.e. not the one that fixed the
> > binding). And note that this was added by Bjorn who do have access to
> > the documentation for this SoC (as well as actual hardware).
> 
> Ack, let's wait for Bjorn to check the offsets. I find it extremely
> suspicious that dp_txa/txb use the same region as usb txa/txb do.

Yeah, I agree, it seems odd, but then again the sc8280xp PHY is a
different beast which also supports USB4, etc. The DP_PHY offset comes
from the header file in the vendor tree and there are no separate DP TX
registers there.

By the way, I forgot that Bjorn actually copy-pasted the devicetree
nodes from an earlier platform when first adding the PHY and only later
realised that the DP part did not work. The fix for that (e.g. to use
the same TX registers) was never merged to mainline (instead we
temporarily disabled the DP part) so the Fixes tag you used would have
been correct if this turns out to be wrong.

> > > Cc: Johan Hovold <johan+linaro@kernel.org>
> > > Fixes: 83a0bbe39b17 ("phy: qcom-qmp-combo: add support for updated sc8280xp binding")
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
