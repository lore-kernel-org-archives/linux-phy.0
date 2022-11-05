Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C4EFC4332F
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlm1RFUhKjttD2SJhuxFsAibRxEnUt2n+EfWB4dnzdM=; b=OjLA2NwRA1PCK6
	jzFK2IwVRjw1/zaHrWy37VEfuoFwrBORlmhC4NCTQq1pg7TBMFK1/F430F7SHDmDKgVBS+bqn4h//
	oOPJCI5PHQXZ7tGu0SLyPwXno4zbMwABPjIuZcCp24r2kvw2eBL4F3y3fky93ZittDXIPw2HbmIYy
	NaTUihg+zqtv4i7YA6Sd4jWLJBZn497WjT46tXL/RyuhQERgV3XDkvMBoKlt4/wWKJi6uhIc4z8Xy
	R8uCbCKlWpLXuaTAm2vcnJKnm/jx5tB7bUQBymzwiofju9xbnueXV9NEUf9VopMGv1oOrsrmcpkJc
	OXNmLZ9d09xnzTUGFjFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDhv-0061Ll-KC; Sat, 05 Nov 2022 07:35:11 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDhl-0061Js-9b; Sat, 05 Nov 2022 07:35:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 258D0CE0B26;
	Sat,  5 Nov 2022 07:34:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1F24C433D6;
	Sat,  5 Nov 2022 07:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667633692;
	bh=aQJtAVcp5NAThFDgMLMxcHB4FwdnINcIlh7bKws/IQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GREa/LEXtAVXwHhD1q27JKmuZBtLwBpNZhIo7ysRX6fI+oxqqUIeZ/SXsuhpUgvPC
	 RuOlwAOX8UTCGNcg4tCPQJhdwGQgtbfsaAXqCzydGfgqUEYaAPdh/87DE5zIeYvfgD
	 8Tb7ysjLqntVLS8GNfwIiVnfxjeURwB8aqQA3/tuXStZoQC1ueEIMuGQGADqT99F6w
	 2b97woPGDedsJjSXbb7YKUWoAl5UhDqJ3U/keuhHjYge5TRyzwJ8nZ9tZPvihmi/pe
	 6uVWWZWMu5Hl6/kr/og/CKauSbF8YQd9d+s1iuTKh/c+cNQqSxmfxsWSJBxQLF0PI3
	 pgRfJ/DODlNNg==
Date: Sat, 5 Nov 2022 13:04:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: Fix UniPhier SATA controller node
 names in example
Message-ID: <Y2YSGDOXpRQ8MIoR@matsya>
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
 <20221027044920.23194-3-hayashi.kunihiko@socionext.com>
 <20221028193859.GA2188803-robh@kernel.org>
 <0d7636f6-2c51-587d-1961-face98dfa056@socionext.com>
 <CAL_Jsq+8Rm9v4megza14JPyamV-9Yr4iAa5r+HhM6qtdHRWEBw@mail.gmail.com>
 <07155116-2027-2916-5a39-e4dff8298b27@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <07155116-2027-2916-5a39-e4dff8298b27@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_003501_698188_3F2795B8 
X-CRM114-Status: GOOD (  25.95  )
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

On 02-11-22, 08:14, Kunihiko Hayashi wrote:
> On 2022/11/02 4:31, Rob Herring wrote:
> > On Tue, Nov 1, 2022 at 4:10 AM Kunihiko Hayashi
> > <hayashi.kunihiko@socionext.com> wrote:
> > > 
> > > Hi Rob,
> > > 
> > > On 2022/10/29 4:38, Rob Herring wrote:
> > > > On Thu, Oct 27, 2022 at 01:49:20PM +0900, Kunihiko Hayashi wrote:
> > > > > The word "glue" is ambiguous for the controller node name. Should put
> > > > > "sata-controller" instead of "ahci-glue" on the controller node.
> > > > > And rename a phy node to "sata-phy".
> > > > > 
> > > > > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > > > > ---
> > > > >    .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml  | 4
> > > > > ++--
> > > > >    1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git
> > > > a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> > > > b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> > > > > index a3cd45acea28..89b8b133777a 100644
> > > > > ---
> > > > > a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> > > > yaml
> > > > > +++
> > > > > b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> > > > yaml
> > > > > @@ -117,14 +117,14 @@ additionalProperties: false
> > > > > 
> > > > >    examples:
> > > > >      - |
> > > > > -    ahci-glue@65700000 {
> > > > > +    sata-controller@65700000 {
> > > > 
> > > > But is this really the SATA controller aka AHCI?
> > > > 
> > > > In cases where we don't have a standardized name, I don't think it makes
> > > > sense changing node names from one non-standard name to another.
> > > 
> > > I see. This can't be named generic, so this change will drop.
> > > And "sata-phy" in the same way.
> > 
> > I think sata-phy is fine. It may not be added, but usb3-phy or
> > pcie-phy are common already.
> I understand. But of cource "phy" is also common, so I defer the change
> from "phy" to "sata-phy".

Should it not be just phy@xxx does it really need to be foo-phy?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
