Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D962ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWFkMwt6HOQTEwFOnnXvuItWGPnzlZKAQqH/zK2dELs=; b=fISW7dgui17CCv
	PXQfa6ea6Tiqs1OuCkSbRPN0zU9eBDWgXGzKcivlRFNYLTChtAfbvd9FTOIFTS315y/HtVTJ/Bawd
	DU7UTlUq4mCdF/kJcE73hJBWNruqxsVKtUbT6I+sDdcIg01ZPEQO07RI5YzIe3gQm5mF+JEuQPobR
	jw38Rq/8NyJpUjbXsRD6jWdZ789CiF5QiQ6jCfAzotZiuZJ+1yNKq7HiLQEMsHDo5f37xvSyHtKpf
	0LoHV46/5k3TtuReqBevQupiaGnTOB3mGxdKgLyYqtSexLIGjdBeUMCydnZ1NsuJheAODhk/UXMH8
	V69zQNxy7U3qSX+CsMIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP53-00HEhX-S4; Fri, 28 Oct 2022 13:07:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooP4x-00HEdD-6S
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:07:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A2F2D62841;
	Fri, 28 Oct 2022 13:07:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E0EDC433C1;
	Fri, 28 Oct 2022 13:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666962438;
	bh=KqluL/CAr3SUlElvnxxgfbjkXmXWuUwxysD/RzhVQrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nw9CI4BJyOG4IJC99m0pn/JoWR9b4Sc131ghvJcg+B90SgRN55urC9NeH2HJ4HU1Y
	 X8NK/XskA3hD7N75D7+KwtTcqO3ZMDqDT7IOsL7PP76gRSKFnpEWPJBsug/tkOOycI
	 oCBSF15yAn750jpt2I/8NovAFOXgLTrwLvedbzT/VC/GhXRPrkPp+lIGugBQA6RHXg
	 DPBhkqmlzakZqneysbvNQE0xh6yT9v3gCiW/k/pPVkjFv8UkhUuU3+HaI6Y+soeRXA
	 75eRSv3XtNvYRMsKj/JvU8eZ1TCl/lMqhgROyG0DZRGPRatac+3NVzrsO3kDCYo8MC
	 l15qN+CMDFL3g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ooP4h-0001JE-9Z; Fri, 28 Oct 2022 15:07:04 +0200
Date: Fri, 28 Oct 2022 15:07:03 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/15] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y1vT94blD9PJHKDp@hovoldconsulting.com>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
 <20221021110947.28103-9-johan+linaro@kernel.org>
 <932765e0-ecbc-8c9b-69c5-ce0bb0c8de68@linaro.org>
 <Y1KDXD9n0cCqjTGy@hovoldconsulting.com>
 <Y1vRDv+hrMmnqwPj@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1vRDv+hrMmnqwPj@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_060719_318903_D9A4731C 
X-CRM114-Status: GOOD (  18.62  )
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

On Fri, Oct 28, 2022 at 06:24:38PM +0530, Vinod Koul wrote:
> On 21-10-22, 13:32, Johan Hovold wrote:

> > [...] This is not about keeping the
> > diff small, this is about readability of the new helper function as I
> > already told you.
> > 
> > And this is a *local* identifier, not some state member that needs a
> > super descriptive name. And the rest of the driver used "tbl"
> > consistently until your EP/RC mode patches for that matter.
> 
> I would disagree here... You can change tbls/tables but then it does not
> help _this_ patch
> 
> Right thing would be to change tbls to tables first and then add init
> helper... For a reviewer seeing an undocumented change and unnecessary
> diff is not right..

I still think that it belongs in the patch adding the new helper
because it is essentially only in that new function that the improved
readability due to the shorter identifier matters (the earlier helpers
where per table type).
 
> Pls split if you would still like the rename

But if you prefer I'll split it out in a preparatory patch.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
