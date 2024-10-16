Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB8ED2A52C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 15:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzLMWfsLm1II2r22LHrdzgfIMn5Ic4vhcdfwn2+LLR8=; b=nj8WElDklu5das
	+ayTGv7WSOJZjU0OfFAzPvGJi3eEOVuDdzXCtJChkiFMrEjnxGLak3iOQsccTgt/ZVN6MQd8rXzG4
	cwf+w0x3y+5a+HZY7y9GCkaNM4d6CxGUw0VdGKjMvhRjCv+XSz+9RQMM394AgA4jkYhr4Qdqbnvan
	53RnB1zP0h1VZ9hWLbHs8Pv/nwR8g83yqV8HQJZgrECzkTIRqAexkFu4cjnSYxZCeoKS6ioZiPzjV
	kbDk1CbpH5iLrow86emgCrA8j4Slc2tNOC5SmcOTFSE/17nRVZ+X0b1DFAe3LtzfIyR2JlwQbLVWS
	kzWwlMuZZ5US4/KJr2EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t164X-0000000CGjj-3gvb;
	Wed, 16 Oct 2024 15:36:25 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t15yw-0000000CFSH-1iVD
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 15:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729092613; x=1729697413;
	i=markus.stockhausen@gmx.de;
	bh=HPgsuU/+qSjMMpe2lJKU0XhZVtyZLSasmGk+d6p1fPU=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=kIUBmrS7G5fyfOAolwUTrNuujducjcVR6184UpZU/gAvugpNEO09UB6TCQaL7UXX
	 Hjbmut7Pp6V0ke1yF0k+lvQZix6pODjqGdcRBNHllg9HGhdAqgYwmMVqTe+T9OnO4
	 MNSUv2rGASa35f0LbGqYg3aR7VkMPhch/QZHypUgDqZVElptVuwLJiSYqYbfCW8A0
	 jkRal7S66yJ3++8j+sQPUsHXaw+b9nO178qSJsRSTPRVV3HbpZF9mWu0WDFSegLWB
	 FPYdozmq5bHioz5Wzg7eQvbjvoM0epuAfZQRP/F+PG5G6X8PA24GfnMazJg68wdu7
	 xz6yRW4MUIRoqQ1hOQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.17]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MdNcA-1ta9kC3Xjk-00eCbZ; Wed, 16
 Oct 2024 17:30:12 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
In-Reply-To: <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
Subject: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Wed, 16 Oct 2024 17:30:11 +0200
Message-ID: <002201db1fe0$4b398dc0$e1aca940$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w+zWHGCIA==
Content-Language: de
X-Provags-ID: V03:K1:/Zkk77incpI7NHKHUH4S1aKLq5HkHUHgQxEhVRkcZBBFlKmvRkX
 wg0UK5W5UWTFXlxpKHnE6S3eU2Gw4swrw0dcIyjlj4u1YrcwOl+JmgrV4GLM18dyopd02vT
 K9Sh9q7jwzTfSvNXnUsz1HTzzVYBqiSrs5MDJSnuyNoHBE7c+KCfxcTH+AMzGxnxEvKGoxZ
 z1NHZdHOL39ooWFN6xDyQ==
UI-OutboundReport: notjunk:1;M01:P0:fMQbmztltOA=;FPr8FEIuVovnwLFgkS6AiIyAXHY
 ToZilz2Ai6WlxO0zSIbzf9duzsVX/8pNX61aIuRTBRcp+SHhEbUfBIKKvjeczuEVE4CUpYv2U
 RkVhzlbZxfuIgLE4eKYAp6rakCMwpIyzbh/DkX4oxpe2ZtYcQksmRUfG/jovJjPOFj4wOQRt7
 gOqvq/szUzomJp//ZDcanyClyPQc34IAzYzM+3le5fvDPFBj7Xc4R/X6GENW7jcp4zCaDwkbc
 IkcOZqXhcDvSjiXHS6qFr3gFvn/zclkr5OIRQhgtNqo1WKRcT/8pu0fQWSCjFtGmv7yhHzEOv
 wg+iRSkjv29GJerEUkUlA9sKu+RVnRuFQpMBqAIs/PPJWUPbXZ04NG2dfH8ccvpauHqXwF7F4
 txBPZ1QL4dZUAe7U7ZwAs9hcj6ieM6/hVHL4/A5zzC/tpKcknwCSoL1VU2dKS8Xfxts0FErD0
 IzBMK7hp7w2y0WGQ3jKmLjxgdNGRn2PhrmgMQlgQOo04jiJPZyU4nIezOGoU4c/wQncEMFfaX
 Jks2HYKzfzZeHxPqqqOrFdPBk6C6WfQcLbVTzDqS9AeA5GHh1j1YsJEkfwXrMobxO9f/bh/vy
 mQqOO5tisc/AemsvnUY+f+peUp7h3tDzuZZUkBq4S7Tjs/oU0yOI3uRzC1t44blFkyE7PVQi7
 S1PPoTt5Dvzrpzbfi15HmbtjnGVfWF1h2/zWm9ak23eHzlxOJAevTnulQhOoMqKr0fZ8MYfcZ
 wJJhYT1Omen1KxbLD5I6glKztS2rkooU1kvhnRqrZIYSa5u1HzPEQU+2EtHczFbMbWnY/1PQx
 7e5iBN2VpHDSkOGp1RUJeKRA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_083038_850646_4600BA5E 
X-CRM114-Status: GOOD (  23.75  )
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

Hi Krzysztof,

with your feedback on the latest version I will take up the issues from 
v2 once again. To be sure that I do not miss anything in upcoming v5 
I will comment on all your feedback. 

> > ....
> > Changes in v2:
> > - new subject
> > - removed patch command sequences
> > - renamed parameter controlled-ports to realtek,controlled-ports
>
> Changelog goes under ---.

After reading this another 4 times now I think I understand. You mean
"put changelog below signed-off-by". Will do with next patch.

> > ....
> > diff --git 
> > a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml 
> > b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> > new file mode 100644
> > index 000000000000..a72ac206b35f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
>
> Nothing improved.

In between renamed to compatible "realtek,rtl8380m-serdes.yaml". I hope
that fits the requested naming convention.

> > +  The driver exposes the SerDes registers different from the hardware 
> > + but instead gives a  consistent view and programming interface. So 
> > + the RTL838x series has 6 ports and 4 pages, the  RTL839x has 14 
> > + ports and 12 pages, the RTL930x has 12 ports and 64 pages and the 
> > + RTL931x has
> > +  14 ports and 192 pages.
>
> Totally messed wrapping. Please wrap your code as Linux coding style.

Was restyled in between. If this is still an issue in latest version, please advise.

> > +  reg:
> > +    items:
> > +      description:
> > +        The primary SerDes paged register memory location. Other SerDes control and management
> > +        registers are distributed all over the I/O memory space and are identified by the driver.
>
> What happened here? I asked only about |. Why are you adding unrelated changes?
>
> Anyway, still not tested and still does not look any other binding.

Has been tested in between with "make dt_binding_check".

> > +  realtek,controlled-ports:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      A bit mask defining the ports that are actively controlled by 
> > + the driver. In case a bit is
>
> Driver? Bindings are not about drivers. Drop.
>
> I don't think you implemented my feedback.

All these have been removed.

> > +additionalProperties:
> > +  false
>
> Please open any existing binding and do it like there. Or start from scratch from example-schema.

Was converted to one line.

> > +
> > +examples:
> > +  - |
> > +    serdes: serdes@1b00e780 {
> > +      compatible = "realtek,rtl8380-serdes", "realtek,otto-serdes";
> > +      reg = <0x1b00e780 0x1200>;
> > +      controlled-ports = <0x003f>;
> > +      #phy-cells = <4>;
> > +    };
>
> One example is enough.

Only one example left.

Best regards.

Markus


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
