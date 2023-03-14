Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D32C6FD1F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 07:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/5H2t4bsHcK+nNgHmB79Bj7tP0CFbjueR0bXLYyP/Y=; b=K562Y28GiHv+WS
	je1fZ445abm4VTb85vNHq1Xk6qL+RPxXNqYx1mQnVSV7VuCbO9e8o9ve8xMkt4Jf0lT947mL5eOXt
	Jsz84Uy+9ydYHaEhIGS/FHg5yhSHO+b3dUt4DmVh7gubW0d1FzckGq2Qb8hTBgDDVyEH4SroFbAoH
	yorA3c/tXDWjR8xUTytXdTDwPzODW/sJXqqN5l+un0CzE5X6Ne5DEScEQsfn2QJBjoyld0HfaasMd
	r0NlRmWtWpf1A+osSeaNpt8vlEzB/CXGNyqheSkh7brLhtZKXXD0ku8qHuIqSlLC1Eky+xb2L5n1x
	J5UOjf5VVmdSfHu+hxIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbymn-009JeI-7u; Tue, 14 Mar 2023 07:09:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbyma-009JaB-ID; Tue, 14 Mar 2023 07:09:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1D7AAB818A0;
	Tue, 14 Mar 2023 07:09:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EA01C433EF;
	Tue, 14 Mar 2023 07:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678777753;
	bh=dJiDwvlKwnk919Dv4H3AXKo5uOs1Vovj49gT6cb/jxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q6GdfbTC2MbHRDbOnIBC/47DzX2vfiiY7SZlSEZW+hiM2YhvOyhixQfDAkI2v2P97
	 +99h3BL7fcoY5hbHjneA8iRmoi8pagpgl3P4f6ygcY+ewbJ9UjEcU43kJG8C1SIn1F
	 7rpif6nuy+vhCSKruzIqhwstfPZV4dcZaRng2853tLxw8pE3bhbPFQ23eJGvA5jaDh
	 HoKFo1WW/n3xgZ9OJPfwqQ5+TfoSiWw4dX5td7+3je0WvSAm9Iihl2hgQFwYwbk8cj
	 zwddUmQ/o3m5/PLXLBcblZ8SgEXfX9w0SymDtPJVBUDAcVcMCnuaBwQi77+AwRHVFk
	 o8YYiA/mM4HLw==
Date: Tue, 14 Mar 2023 15:08:48 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v11 09/13] arm64: dts: ls1046a: Add serdes nodes
Message-ID: <20230314070848.GA143566@dragon>
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-10-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230313161138.3598068-10-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_000916_777557_D13FE490 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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

On Mon, Mar 13, 2023 at 12:11:33PM -0400, Sean Anderson wrote:
> This adds nodes for the SerDes devices. They are disabled by default
> to prevent any breakage on existing boards.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>

The DTS patches look good to me.  Let me know if they are ready to be
applied.

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
