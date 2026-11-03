Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6B4606D830
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 11:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Vf/NMqMw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=RyJEK7l3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d3KPfhC7ubtpPX15ujidngNXiBRpwxjyn4uiZJ5te1o=; b=Vf/NMqMwLVPRFaR7O8K86oAXud
	waP/Hh0GH5yqaScm1d3AghIheZ6I2SzahVzDdxXRJVIstU3ra8ZM04pvNNkgSktJJOXxxtZZwGYgD
	ZvME3o1oC3RD9idJgoHqmt6wr+JXg2PagE2Tn2/a2TfWIO/mnBkURlufh6h8P21oYZX+vQPrcyTZC
	slvF1Q+RYy5cYXVP8JYwY2oOt8PjZf4DEOxYB73EyBnexjffvZH14e8Wqrefe02+x1ZTMhEGO2EEM
	uLIIxuNWuSfI6YouZh3E8JNyi62661B095WUTfzyTRbrvTdVB036putXns2aKTvBWYgli4mD2VxoM
	EEEkUGQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOCPQ-000000029Gx-2emj;
	Tue, 03 Nov 2026 11:10:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOCPO-000000029Fm-3rMg
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 11:10:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ABAE740659;
	Tue,  3 Nov 2026 11:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B2211F000C1;
	Tue,  3 Nov 2026 11:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793704230;
	bh=wwG22fdJmBwOmg0TU45Al3Kqsr0pJf29eGZ38ZwAb+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RyJEK7l3bCWre+kk38VuCHDdjcz94HTRlWD/3iNu0Egasa3PUHwaMAoKuKIpVgRTJ
	 Iw79dsNijHqIitkKAz5Zy3bTj/UnXFr2rh6Jsdbc5u3eAxRAfr49WmTA16RbckPl5z
	 dY3or8QA2kyymOeiE54ugE5kC6NprP8spi7gyJJYhO74HgGHaJsONgBxBCZDV65wYi
	 n6GSTQrFznedeN0hz2fzTiuZtP4fmLVy/T2i8KqFPqGteiGdyYNshb4UIzCmuqdjCZ
	 NCBJgzsFRYcmQsnv1/xYYUOJWjHCPSQ0m1MUNfBRDrRkX2lPUESXVgxX8fnAAVwkk/
	 tjgu4LhuUEoXA==
Date: Tue, 3 Nov 2026 12:10:28 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, stable@vger.kernel.org, 
	Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Justin Chen <justin.chen@broadcom.com>
Subject: Re: [PATCH] phy: broadcom: use devm_clk_get() in
 brcm_usb_phy_dvr_init()
Message-ID: <20261103-hulking-tuscan-emu-e5ff7e@quoll>
References: <20261103104240.1373792-1-vulab@iscas.ac.cn>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103104240.1373792-1-vulab@iscas.ac.cn>
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


On Tue, 03 Nov 2026 10:42:40 +0000, Wentao Liang wrote:
> brcm_usb_phy_dvr_init() obtains the USB 2.0, USB 3.0 and suspend
> clocks with of_clk_get_by_name() and clk_get().  Both take a reference
> on the clock that the driver never releases: the error paths after the
> lookups return without clk_put(), and brcm_usb_phy_remove() only
> unregisters the sysfs group and the PM notifier.  clk_prepare_enable()
> and clk_disable_unprepare() only change the prepare/enable counts and
> do not drop the reference.
> 
> Use devm_clk_get() so that the references are dropped automatically on
> probe failure and driver detach, and drop the now unused device node
> argument.
> 
> Fixes: 49859e55e364 ("phy: usb: phy-brcm-usb: Add Broadcom STB USB phy driver")
> Cc: stable@vger.kernel.org
> Assisted-by: DeepSeek-V4.1-Flash and OpenAI Codex
> Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
> ---
>  drivers/phy/broadcom/phy-brcm-usb.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 

Multiple things here:
1. Your team ignored completely previous feedback. Multiple times.

2. You use multiple identities with this email address, thus I doubt that we
   speak with an actual person.

3. Your bot does not even bother running checkpatch, right?

4. Nothing of this was reproduced nor tested.

5. Finally, the same feedback:
You sent multiple independent patches, to multiple independent
subsystems. The amount of these patches clearly suggest this was
AI generated and most likely not tested.

More importantly, you sent all this work without properly organizing
relevant patches into patchsets. This makes reviewing difficult
and might cause multiple reviewers to address the same issue.
Replying to the entire set is impossible and requires handling each
patch independently, instead of applying or discarding the set.
Maintainers also won't see the bigger picture of your work. Quite
worrying.

This is on the verge of hostile patch: bomb us with so many
contributions, we won't be able to handle them in efficient manner,
like responding ONCE to ask you to slow down.  Considering all this
is untested and LLM generated, I have even more doubts whether this
should be considered for review.

Please read kernel documentation BEFORE posting more work. It will
explain you how to identify subsystems, how to organize your work per
subsystem (so a patchset grouping multiple patches with a short cover
letter), how to document the issue discovery method and what was
or was not tested.

Best regards,
Krzysztof





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
