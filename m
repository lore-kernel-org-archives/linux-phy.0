Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 477CFC47089
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 11:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iw4Zw9Djgghfw7EMeBbbGhmHTrugG9LLwjDxwyDC3R0=; b=qSG+9N+vaGYXQW
	2SCOrgKLUviuLFUcaMo/IwyUbuUlJwh5rb0D0VFFDKvSs5g/ATvDRlRRgJt4OB06WaqgPrgkJVqBm
	EblXvNl2+xW9gt5Qdi2riirEHh+DZ1IteaKsiAgbcDk3YnB2RmAt5v6qEygeoqHCxxBlNATTcD0F5
	bKYYlEApKasIXfOFEaFbX/7x59llc2zRTUp6aJ7YYBjwfqvl2jO0fSwrU8EcqRzgnbkZ6bikC1bxq
	19w6Soh871NDAj4gtBP01Hn20iXv71Epc9JVY82PEBSWrIejiv+62Hy0Wl/txrz5zHKUTtdDNqFC+
	wGN+nFLznjFxofZXO9Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2A4n-0028E2-KI; Mon, 05 Dec 2022 11:56:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2A4k-00286b-H7
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 11:56:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7330EB80F1A;
	Mon,  5 Dec 2022 11:55:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 239C0C433D6;
	Mon,  5 Dec 2022 11:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670241355;
	bh=hpUDB7E/tcmMY7Xhkghn2/PcoLFJKUt0sZ4ikT/iv5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bkUR3HuwYkpKevxDhCFd/zEPJ6WwKIM88AI4Or8OycKE4mVQrZdQYHx68KddLUmeo
	 KYZQREq2LKCwB1MaSN5QFdosqBcInbUystpld39JTdZWpWCwiRnqXXmKl6J9vDY+5R
	 av9ETh/t76OxVNuwUGNbcmkkcLBN9kwhDtu/DNWrM4+D7oOeoW3P1+s7beTSDGgr9L
	 igoHVVOpbAfAGkKvQAsQuHHr7q4Ee7LiIh2Ok15D8nOn9O/EGhj8HHvZXDkHBpRB/9
	 veO8VgzF1C56mOLGFc+kVu/L/Upn9nvAXSQgNwjCKfogl/OHHlesyn/RI5ddrKrmcK
	 HrexNAwxQB06Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1p2A4m-0008Op-8u; Mon, 05 Dec 2022 12:56:00 +0100
Date: Mon, 5 Dec 2022 12:56:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 15/15] arm64: dts: qcom: sc8280xp: fix USB-DP PHY nodes
Message-ID: <Y43cUGf0qUOIXRgZ@hovoldconsulting.com>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
 <20221121085058.31213-16-johan+linaro@kernel.org>
 <c91b13e2-ac74-153f-f19b-587ded948a75@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c91b13e2-ac74-153f-f19b-587ded948a75@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_035558_775134_25764830 
X-CRM114-Status: GOOD (  16.50  )
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

On Thu, Dec 01, 2022 at 03:12:13PM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2022 09:50, Johan Hovold wrote:
> > Update the USB4-USB3-DP QMP PHY nodes to match the new binding which
> > specifically includes the missing register regions (e.g. DP_PHY) and
> > allows for supporting DisplayPort Alternate Mode.
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---

> Johan (and anyone also interested in this),
> 
> What are the next steps with this for older SoCs? Is there any plan to
> change the bindings and DTS for them in similar way?

Yeah, I think we should go ahead with that. Especially, as it seems 
some of the older platforms were never tested and the DTs were
incorrect to begin with.

I'll take a look at doing so when reviewing the latest revision of the
sm6350 series (which is moving to the new scheme).

Just have a couple of higher prio tasks to get out the door first.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
