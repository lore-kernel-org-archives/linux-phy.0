Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC89C004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 08:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR/ZAHPoeoPyatrghQaJKwe17WcJ7tl+PCqiqBDVqBM=; b=1HNQdY+Lu/7L/M
	J0yyvKC0du1cPsieE1A8IPybsJr+6oevXiC+HDLrpPHrukpsi1osdgazXrbn2oKdqIAz2eOMg8FIK
	+eNsVgBIHYYms3mu7p7dgycOh8C1xZSFmtbidGIec0VkpsFLaxLvoakVs9YmeiRbpqSYMPoZgwZhT
	s4JVzBpmZMyAAmLD0AY6SkkzA7PmnzU5hOiZVVlQSDliQYQ9LPZdSkHw0p31gUMMFtXJHLF12Pyl2
	DQbrdLUxDBifU+/RDU3T5s6chaXDOUTkcVxbFlXeJ8F7H32UtyYpfiMizPS/q1Vms5W79/LZ+5aB4
	LcZ/nklxh9b+g6CJOQ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3aW-00HR3x-2X; Wed, 18 Jan 2023 08:14:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3aT-00HR34-L8
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 08:14:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CECCC615AF;
	Wed, 18 Jan 2023 08:14:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36169C433EF;
	Wed, 18 Jan 2023 08:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674029661;
	bh=8D9nmC7N4QZK4djbEGofw2hmIQwwUhoPJgAYCdbVOE0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qcuLxoCwml0jHIWjn2IRUWc/ebuzIGcZG6cKlz9MnVeM885zAyim3Yl0pN+Nt7iKi
	 rTdHC6hf9RQYpdju3Vfw8xgmk8+hWqWYCShcpdT3k4zVYK4cdTlzFg30tWYh1b7sT+
	 z+7tOUwOwZakbPZTnNMW7uVENEgnflUvF4JNHdWw6g9ALVwnUxVcUWqKLf4VmAU/p0
	 ZK1NzeKKi2tVhRwNKsoxygiOzSvZmK1mGmhhdyQKMpG0jTU3bbkRAYCRpZ3vs5s1bz
	 CEfLqPDlb52exL+EozFvyQ23ZiweznSKfI73s1M63Jfvro36wEqlOYCIrXaVXJ5hSq
	 44SNYL8ehsREg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pI3an-0000cb-AM; Wed, 18 Jan 2023 09:14:45 +0100
Date: Wed, 18 Jan 2023 09:14:45 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/6] phy: qualcomm: Add UFS support for SM8550
Message-ID: <Y8eqdcLthEaYq/Pp@hovoldconsulting.com>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_001425_747317_269677E1 
X-CRM114-Status: GOOD (  13.37  )
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

On Wed, Jan 18, 2023 at 12:41:42AM +0200, Abel Vesa wrote:
> The v4 of this patchset is:
> https://lore.kernel.org/all/20230117142015.509675-1-abel.vesa@linaro.org/
> 
> Changes since v4:
>  * Renamed QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE[24] to
>    QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE[24] in patch #4
>  * Added Dmitry's R-b tag to patches 2, 3, 5 and 6

In the future, please include the full changelog here even if you
provide a link to the previous version. No need to make it harder than
it has to be for reviewers.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
