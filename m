Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC2FEB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 14:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/ZcSLQ5X4g1oNEXjBSzQ+2br6ZlZx5Rb6IoNrxxEWI=; b=vvItPf4HaLK7rN
	E8WOk2n8SFh9UmjFNJmI4PnWci3qffAZV9Vt/BcLOUl8EbJ4LeKL0LAnkic6TSW+rZvFXcqjISU+O
	JwxM0UbSSCgEz7ThNEm807r8IQXjFLrcVphvmkSCuCIKUnohNjM/j1JL362UdhP8pX0i3HJQrdNvq
	KnJWR+cqmFqhARipIjb8+86Bil8WqAvVybnzINBZXAlf/7AcP+jQQOL7kojVP3X5brHzpXj7VKXy2
	tUS2sqbqJIC1s7bvppg4mbUtAp2o3Pc+QT4BTARMNgIhdvWoZa6XQOZr4v1mvuvVC47UJEY0+pirO
	yL26naFkv8lxZKc/osNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Rmi-00Bwuu-0J;
	Wed, 14 Jun 2023 14:47:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Rme-00Bwt9-21;
	Wed, 14 Jun 2023 14:47:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 18C3D6431D;
	Wed, 14 Jun 2023 14:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB20DC433C9;
	Wed, 14 Jun 2023 14:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686754059;
	bh=YBvoPI/IEVtbY5FNxrgQvaHMUweYY58AfZfxW/FUfzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e3LNvXuGGMNQtEoM1FFIbIMA86EOKQwXEt+3tALeKxbJwddDvByyh87z716lOdEGC
	 ay6V6UsAWKdIpfQeOHUTj6uRCRuxoBSQ/ETGAidKLmmAZaEKJNYu7cWBppubt22OZZ
	 qs7CsgD6eYxPn/6tp8A8zc/IMx9Wwqni4eq6r2HIflQzfEAn2bw6+gBVmE50N1J2VT
	 xdtONfXgAZr/MN4pOsv/pIk3cO5LxiMXaxi73cLALIFbTrJFx3D++N+lWZ75xNd4yO
	 zo3zVf4keiHIC1Lp+4V1UkRY9UGYRsboF0z0HH6nx3D0gBBtowUDJNQ1wU4JmuqIAX
	 iiI/VHltBNFtQ==
Date: Wed, 14 Jun 2023 07:51:00 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 24/26] arm64: dts: qcom: sa8775p-ride: enable the SerDes
 PHY
Message-ID: <20230614145100.xgkme7or7k2i552d@ripper>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-25-brgl@bgdev.pl>
 <0a57a9ad-67ab-cf1a-9bb7-c645de833450@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0a57a9ad-67ab-cf1a-9bb7-c645de833450@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_074740_706448_905D7660 
X-CRM114-Status: GOOD (  19.87  )
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

On Tue, Jun 13, 2023 at 09:02:23PM +0200, Konrad Dybcio wrote:
> 
> 
> On 12.06.2023 11:23, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > 
> > Enable the internal PHY on sa8775p-ride.
> > 
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> ---
> 
> Bjorn, Krzysztof.. I was thinking whether we should even be disabling
> such hardware by default..
> 

I'm in favor of keeping the configuration as generic/common/simple as
possible. So I like your suggestion.

Regards,
Bjorn

> Things that reside on the SoC and have no external dependencies could
> be left enabled:
> 
> pros:
> - less fluff
> - we'd probably very quickly fix the missing PM calls
> - possibly less fw_devlink woes if we fail to get rid of references to
>   the disabled component?
> 
> cons:
> - boot times
> - slightly more memory usage
> 
> Konrad
> >  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> > index ab767cfa51ff..7754788ea775 100644
> > --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> > +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
> > @@ -355,6 +355,10 @@ &qupv3_id_2 {
> >  	status = "okay";
> >  };
> >  
> > +&serdes_phy {
> > +	status = "okay";
> > +};
> > +
> >  &sleep_clk {
> >  	clock-frequency = <32764>;
> >  };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
