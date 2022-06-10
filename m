Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A26C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 15:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rBNqCId0Y/eLS7I6n0nQobuuVSx+S1YMH3ihgZCosPg=; b=UthiD91yHJqjXo
	ydsUkrMP6GrnRdok1OLttb0dQEntIy4UeFKAqSphd8jwfeJf/1AEb3L11JIU7lwlV6DtBddwYJ0Cz
	6OeOLEFCQtbh2soPNr7RjJrarDjq3D9NJCqku4C3ImGjeaiqXIx6YAL4e7rOQHxRV4LiHD82TdGrG
	i5sp1Nh83ITLFdrYAYYoaagjGVPgW/87t6gRVE11nOiHVQCtu1HiCuR/6XkONpS/fN4yxvAg42sza
	r+wuyi06XBOLCsnKiekej7/t9f3bw7aQPeXXQRVS3UJV+e2MZHFFx6rZUlsoqgPuYMcP4sGMaTO2s
	WzZpvyQiN84AmU4VycmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzgah-008mL7-64; Fri, 10 Jun 2022 15:30:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzgae-008mKL-0z
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 15:30:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B742C61F90;
	Fri, 10 Jun 2022 15:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFB5AC34114;
	Fri, 10 Jun 2022 15:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654875022;
	bh=ta96T6c2nNcPWAsBNRTtLMz9n9426tesAoUAX1Q+IMM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=QTha3y968nP9ETEGDQmF6NzJDQ2F4BQH3LJGoscUtpOb2lrMjg/UMPaLmZy04j5iK
	 gu34asgm5pjSkdIl7Ps9AdUNL4no45ztjiHjUU0njH75skMJONKlY6nd0PiBk186He
	 /4nCrqYWqWfh4s68LGCdn6YPMRt3QTU5S0oecdm6ozFzx0YIpWJc2xwGy15ITfs4aP
	 qPUJQ5BaA3G3o1XWW50E8++U2X5Owivd6AUdImZGQONyIv3XeyaCzVkC6dbgdlsVfH
	 KDwPtrt9lp3VSvJaMk9TyV5JJxwkJspPr3bxlOhm2haQI/PBdy+AukmtVQfKcFJ1Sq
	 P0h/pRD7CRv0w==
Date: Fri, 10 Jun 2022 10:30:20 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Wangseok Lee <wangseok.lee@samsung.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
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
Subject: Re: [PATCH v2 3/5] PCI: axis: Add ARTPEC-8 PCIe controller driver
Message-ID: <20220610153020.GA597980@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610000303epcms2p537e12cb268999b4d4bdeb4c76e2eb3dd@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_083024_207035_E5F27B1F 
X-CRM114-Status: GOOD (  33.87  )
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

On Fri, Jun 10, 2022 at 09:03:03AM +0900, Wangseok Lee wrote:
> On=A006/04/2022=A001:03,=A0Bjorn=A0Helgaas=A0wrote:
> >=A0In=A0the=A0subject,=A0why=A0do=A0you=A0tag=A0this=A0"axis"?=A0=A0Ther=
e's=A0an=A0existing
> >=A0pcie-artpec6.c=A0that=A0uses=A0the=A0driver=A0name=A0""artpec6-pcie"=
=A0and=A0the
> >=A0subject=A0line=A0tag=A0"artpec6".
> >=A0
> >=A0This=A0adds=A0pcie-artpec8.c=A0with=A0driver=A0name=A0"artpec8-pcie",=
=A0so=A0the
> >=A0obvious=A0choice=A0would=A0be=A0"artpec8".
> >=A0
> >=A0I=A0assume=A0you=A0evaluated=A0the=A0possibility=A0of=A0extending=A0a=
rtpec6=A0to=A0support
> >=A0artpec8=A0in=A0addition=A0to=A0the=A0artpec6=A0and=A0artpec7=A0it=A0a=
lready=A0supports?
> =A0
> "pcie-artpec6.=A0c"=A0supports=A0artpec6=A0and=A0artpec7=A0H/W.
> artpec8=A0can=A0not=A0be=A0expanded=A0because=A0H/W=A0configuration=A0is
> completely=A0different=A0from=A0artpec6/7.
> phy=A0and=A0sub=A0controller=A0are=A0different.

Thanks for this detail.  Can you include this in the commit log next
time around in case anybody else has a similar question?

> >>=A0+/*=A0FSYS=A0SYSREG=A0Offsets=A0*/
> >=A0
> >=A0The=A0list=A0below=A0seems=A0to=A0inclue=A0more=A0than=A0just=A0regis=
ter=A0offsets.
> >=A0
> =A0
> Is=A0it=A0clear=A0to=A0change=A0to=A0"FSYS=A0blue=A0logic=A0system=A0regi=
sters"=A0
> like=A0Jasper=A0Nilsson`s=A0comment?
> https://lore.kernel.org/all/20220607070332.GY18902@axis.com/
> My=A0opinion=A0is=A0the=A0same.

Yep, that's fine.  But spell it "glue logic", not "blue logic" :)

> >>=A0+static=A0int=A0artpec8_pcie_get_clk_resources(struct=A0platform_dev=
ice=A0*pdev,
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0struct=A0artpec8_pcie=A0=
*artpec8_ctrl)
> >>=A0+{
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0struct=A0device=A0*dev=A0=3D=A0&pdev->dev;
> >>=A0+
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0artpec8_ctrl->pipe_clk=A0=3D=A0devm_clk_get=
(dev,=A0"pipe_clk");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0if=A0(IS_ERR(artpec8_ctrl->pipe_clk))=A0{
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dev_err(dev,=A0"cou=
ldn't=A0get=A0pipe=A0clock\n");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return=A0-EINVAL;
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0}
> >>=A0+
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0artpec8_ctrl->dbi_clk=A0=3D=A0devm_clk_get(=
dev,=A0"dbi_clk");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0if=A0(IS_ERR(artpec8_ctrl->dbi_clk))=A0{
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dev_info(dev,=A0"co=
uldn't=A0get=A0dbi=A0clk\n");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return=A0-EINVAL;
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0}
> >>=A0+
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0artpec8_ctrl->slv_clk=A0=3D=A0devm_clk_get(=
dev,=A0"slv_clk");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0if=A0(IS_ERR(artpec8_ctrl->slv_clk))=A0{
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dev_err(dev,=A0"cou=
ldn't=A0get=A0slave=A0clock\n");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0return=A0-EINVAL;
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0}
> >>=A0+
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0artpec8_ctrl->mstr_clk=A0=3D=A0devm_clk_get=
(dev,=A0"mstr_clk");
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0if=A0(IS_ERR(artpec8_ctrl->mstr_clk))=A0{
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dev_info(dev,=A0"co=
uldn't=A0get=A0master=A0clk\n");
> >=A0
> >=A0It'd=A0be=A0nice=A0if=A0the=A0err/info=A0messages=A0matched=A0the=A0e=
xact=A0DT=A0name:
> >=A0"pipe_clk",=A0"dbi_clk",=A0slv_clk",=A0etc.
> >=A0
> =A0
> I=A0will=A0fix=A0it.
> =A0
> >=A0Why=A0are=A0some=A0of=A0the=A0above=A0dev_err()=A0and=A0others=A0dev_=
info()=A0when=A0you
> >=A0return=A0-EINVAL=A0in=A0all=A0cases?
> =A0
> When=A0property=A0is=A0not=A0found,=A0it=A0just=A0to=A0return=A0error.
> I=A0will=A0modify=A0to=A0return=A0PTR_ERR.

Using PTR_ERR() looks like a good idea, since then you return the
actual error from devm_clk_get() instead of always returning -EINVAL.

But that wasn't my comment.  My comment was that it looks like these
should be all dev_err() (or all dev_info()).

> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0switch=A0(mode)=A0{
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0case=A0DW_PCIE_RC_TYPE:
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0artpec8_pcie_writel=
(artpec8_ctrl->elbi_base,=A0DEVICE_TYPE_RC,
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0PCIE_ARTPEC8_DEVICE_TYPE);
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0ret=A0=3D=A0artpec8=
_add_pcie_port(artpec8_ctrl,=A0pdev);
> >>=A0+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if=A0(ret=A0<=A00)
> >=A0
> >=A0Are=A0there=A0positive=A0return=A0values=A0that=A0indicate=A0success?=
=A0=A0Most=A0places
> >=A0above=A0you=A0assume=A0"ret=A0!=3D=A00"=A0means=A0failure,=A0so=A0jus=
t=A0curious=A0why=A0you
> >=A0test=A0"ret=A0<=A00"=A0instead=A0of=A0just=A0"ret".
> =A0
> There=A0is=A0no=A0special=A0reason,=A0but=A0it=A0seems=A0that=A0the=A0for=
mat=A0used=A0
> in=A0the=A0existing=A0dw=A0driver=A0is=A0applied.

Fair enough.  "git grep -A2 add_pcie_port drivers/pci/controller/"
says all *_add_pcie_port() calls use the same pattern, so thanks for
following that.

Bjorn

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
