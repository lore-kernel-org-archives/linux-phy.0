Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25708C77B7C
	for <linux-phy@archiver.kernel.org>; Fri, 12 May 2023 10:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bZ/sq1MEegwVn4ovtNmRM0WlcxrybIOoPh2/a23OlA=; b=2gakEzR94FrrUb
	QEv51qdPpVu940UIlxoxwqO4iNkydskJFVyQeMpPk+FAZJSM3tsMS8agH+71SKTvTEK7HXr/KRdm5
	08abmN8aGQ+OELNMAAP/TNTXYnUztcIM7wzFyFURAytpMllvWe8MJZ34JZl/ldk787Vt/sZIzgNiS
	P+mUJE89nBkRXbs8LJMtNsTnWqSArF6CbgIYu38LWAdBMn0z4lAbmc+tCGConFUrw2LEgcEnhY+m5
	gaqVPQPyBr+kOzIT3Q4cOi2YLvIBrx0hUJLOCookr4IN1ZRYAq6zcrNa02nh75HgoAIeGB2TGBtNK
	ye+3YLDKJaiztmHcU1Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQHy-00Bffd-2W;
	Fri, 12 May 2023 10:46:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxPG5-00BTwD-1q
	for linux-phy@bombadil.infradead.org;
	Fri, 12 May 2023 09:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9Vo0nY9yxWfFvYGjI81Tm0qGQTif/XuXATMzKgrEPB8=; b=Jj1F+M2q7aLiTZnCkpgwHJ/koq
	lA38ZsfJv4jBy+HjTP5yyWXauzz3v7Yfg0XEhExTKO/sDWf9u3NhdBvP+iE7XdPwUNk/e7djyyNgG
	8M56kVfNqH5OjnQYTeEP9Hx4Y3ZM/io72w6YgPjyXYeaOCM1ta675389ay12RWbo/BY14MClonen1
	eTrrxVtaDO3ia9tnVAUjpevyc8AqK3KO2KOhGEk5hBpPY9Z8Zn1DFhBaxD9QWg9kb7rJW+mQ+Zgqt
	BDo7wo+CHaiHAZd1GtsMKmwx3AJEJKK7xJC1hnXS4PGkbpUUZAYwu771vD7FvzH+of+aM7Jr6OtKo
	WD5GMTjw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxOnI-0096Td-1o
	for linux-phy@lists.infradead.org;
	Fri, 12 May 2023 09:10:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 84BC865424;
	Fri, 12 May 2023 09:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 252CBC433AC;
	Fri, 12 May 2023 09:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683882627;
	bh=kUiWU6lZcVcCsvBfK0GM03OeHi8GVKMv4D/U9jZXzF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UdaUzy4bLYXxpoevkE7hgsxmdHDrXE0lz6npy1lCRiSVzZ5p3FZfrKoBYb4gBSg5s
	 qTtNH6dC6+GHQERSnAZ/ArJeX1y3Qw3vZI42MUKvTDkH7XZg6g6x7NrhaPKS0mUFZm
	 WnPZWF7m9co+oPCq0fcTXKQcBHp1wJxAlp1bZhEhgSVVhJK/cWyfNXV+cSAP+xsDCI
	 X5kKY/C2UEmDBInVTBgAv8WoElXXahZYa8KQ4K6cxXINglTj9jA78X7/3KufQtpvAD
	 +UCtzT14GdXJ6Ohk1f4ReTbL4px1jVLnud/wCXPBTt7cmBj0nNf4B6GOy6Yx96PWKC
	 uQ+MHkOMJfxpw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pxOne-0002j6-JQ; Fri, 12 May 2023 11:10:54 +0200
Date: Fri, 12 May 2023 11:10:54 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/8] phy: qcom-qmp-combo: Extend phy_mutex to all
 phy_ops
Message-ID: <ZF4Cnl9n_bntLKf7@hovoldconsulting.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
 <20230510031930.1996020-4-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230510031930.1996020-4-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_101032_779086_C04B0384 
X-CRM114-Status: GOOD (  10.28  )
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

On Tue, May 09, 2023 at 08:19:25PM -0700, Bjorn Andersson wrote:
> The phy core ensures mutual exclusion across the ops for a given phy,
> but the upcoming introduction of USB Type-C orientation switching might
> race with the DisplayPort phy operations. So extend the mutual exclusion
> to cover the remaining ops as well, to avoid concurrent reconfiguration
> of the hardware.
> 
> Reported-by: Johan Hovold <johan@kernel.org>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
