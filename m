Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F33E6C43334
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 21:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dx4BVhJ8NDWTkHIQ3cGv/5o41bBoITE7w/6FqnMS6HM=; b=G4S4+3+MkswDFo
	BzvYmTYpnPbsDFWHiD5zg7gkBTFq1zzPC1JFYUxcPumnIt1Cp5ECcPMLgxTzuEpml21BQzQ/SUGnV
	BemJ39Vr8TpZxcmPJOZGEJS7D9D3ElFzYuQN5fmCv2NETTq2Q/WbZSdIOJiRGXGs9JefgGoWAqNQU
	QsoCtDpPms2jgozpqsLWiDpqN3qAH7aCJyjdWk2BzhhTaj53iNCWJfNjX+yCXi5YICdfhh8Jbjmnj
	u5YF2hmIJbJ8u6eeg+PzTdCo1e2xKOlkdqM/WJbB51eMixX33qnqILL/hd733BWUwYrruxu6dCqo6
	olKo44Cje6FXt++00Xug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3lCD-007HZn-4v; Tue, 21 Jun 2022 21:14:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3lC9-007HY6-VA
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 21:13:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AAF5D61568;
	Tue, 21 Jun 2022 21:13:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDEF8C3411C;
	Tue, 21 Jun 2022 21:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655846036;
	bh=6Gh2pfurCknNYy+OdSh2vMrQ6/Z8HMsRC+9OhdQ5eCw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=iXri0HcOwQfMFDHjHbPtrDp82vO3VYJcai9ZVqW2Gy+mKVrGY/oKkEh67UAXH371h
	 Z1BnwUs1pfvNsuCBMHxN4Ce8H01DGoUOLzCMsXi/CtmGgh5V87WYu8fgO0zcm07+UC
	 Ks8ycNNycGU7AKWNVG4KpOOhK4xijnQxoqShuNOdQOHyDj75yz+Zw2PwaHVfhd1zlQ
	 r9tVnxklH1/mUz0FvAFOZZfeGtQVaKsP1yXnAyUAxZs8pjnOhU3710bby7GqRtJNta
	 Fx02Q9l/BXpHKggDGyz3TRY01ADhZ2LV0webIIvfR19VPViOlxYbx3pboEiA+bgWdP
	 irsqESke3Kjhw==
Date: Tue, 21 Jun 2022 16:13:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
	"lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>,
	Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>,
	Dongjin Yang <dj76.yang@samsung.com>,
	Yeeun Kim <yeeun119.kim@samsung.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Message-ID: <20220621211354.GA1332400@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220620083821epcms2p57a65984523a0f2a3815e4873e8bfc6df@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_141358_118959_B9DB7460 
X-CRM114-Status: GOOD (  20.29  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Jun 20, 2022 at 05:38:21PM +0900, Wangseok Lee wrote:
> On=A017/06/2022=A007:59,=A0Krzysztof Kozlowski wrote:
> > On=A013/06/2022=A018:29,=A0Wangseok=A0Lee=A0wrote:
> >>=A0Add=A0description=A0to=A0support=A0Axis,=A0ARTPEC-8=A0SoC.
> >>=A0ARTPEC-8=A0is=A0the=A0SoC=A0platform=A0of=A0Axis=A0Communications
> >>=A0and=A0PCIe=A0phy=A0is=A0designed=A0based=A0on=A0SAMSUNG=A0PHY.
> > =

> > No=A0improvements=A0here.=A0On=A0v2=A0I=A0gave=A0you=A0link=A0pointing=
=A0to=A0specific
> > paragraph=A0of=A0our=A0documentation=A0which=A0you=A0need=A0to=A0apply=
=A0-=A0wrong=A0wrapping.
> > Is=A0there=A0something=A0unclear=A0here?
> > =

> > Please
> > do
> > not
> > wrap
> > in
> > different
> > style.
> =

> I think i misunderstood your review comment.

Krzysztof was pointing out that your commit log:

 =A0Add=A0description=A0to=A0support=A0Axis,=A0ARTPEC-8=A0SoC.
 =A0ARTPEC-8=A0is=A0the=A0SoC=A0platform=A0of=A0Axis=A0Communications
 =A0and=A0PCIe=A0phy=A0is=A0designed=A0based=A0on=A0SAMSUNG=A0PHY.

only fills about 50 columns, and if you run "git log", most commit logs
fill about 75 columns so that when git adds 4 spaces of indentation, they
fit nicely in an 80-column terminal and take advantage of the whole width.

It's easier to read when all the commit logs are roughly the same
width.  So please wrap yours to something like this:

  Add description to support Axis, ARTPEC-8 SoC.  ARTPEC-8 is the SoC
  platform of Axis Communications and PCIe PHY is designed based on Samsung
  PHY.

The PCI driver the commit log is:

  Add support Axis, ARTPEC-8 SoC.
  ARTPEC-8 is the SoC platform of Axis Communications.

  This is based on arm64 and support GEN4 & 2lane.
  This PCIe controller is based on DesignWare Hardware core and uses Design=
Wa
  re core functions to implement the driver.

  "pcie-artpec6. c" supports artpec6 and artpec7 H/W.
  artpec8 can not be expanded because H/W configuration is completely diffe=
re
  nt from artpec6/7.
  phy and sub controller are different.

This should be similarly rewrapped to fill 75 columns.  The short lines are
a signal to the reader that "this is the last line of a paragraph, so
expect a new paragraph to follow."

But in commit logs, paragraphs are typically separated by blank lines, so a
short line followed not by a blank line but by text that *could* fit on the
previous short line is a confusing signal.

This similar to the Wikipedia style:
https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Layout#Paragraphs

The PCI driver commit log should also join "DesignWare" and "different",
which are currently split across lines.

> I will modify it as below.
> s/SAMSUNG=A0PHY/Samsung phy

"PHY" is typically all caps in English text, e.g., see examples here:
https://en.wikipedia.org/wiki/Physical_layer#PHY

Bjorn

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
