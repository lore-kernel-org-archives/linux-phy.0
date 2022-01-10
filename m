Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B054C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jan 2022 19:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecpvncaJjqAMUKLEwzF0NauylUpkkifmI3yNcqNZa3c=; b=SA2s76rKDOSVYi
	JFMJIs7fi5BqR/PUKm4wHT3bFlVVYV+qsTzOnmycuHUZbNxJQOBfD6SxHKBn5a5SkRUIqgxP1DaBD
	/YU/bfHJBW7yOQnm2uU3Pf/ikB08ygndlDi3Jl2iI5+kiaYqFo9Mp7bdc05pUJvfAo5yX371AiQFe
	w8MECTN/ykuPoplwZJK8JwjITTLARZX1Wve1RWhUkrcmVR/dn5lPNzbva4cW6GUnpB7LRT0tvfw9L
	icKtmTLdCntOR9R1xpfu8CCp1ztph8nFyvo/TlF2UNYnc95S5ZfbXD8Mi1YYr2p04AWKfC565R/NX
	lfXgLt+eV8fk3U2zg/MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n70c1-00D5GE-Ps; Mon, 10 Jan 2022 19:45:49 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n70bz-00D5F7-Om
 for linux-phy@lists.infradead.org; Mon, 10 Jan 2022 19:45:48 +0000
Received: by mail-oi1-f171.google.com with SMTP id i9so20100134oih.4
 for <linux-phy@lists.infradead.org>; Mon, 10 Jan 2022 11:45:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+rUH2Bw7JdmQp0ELIJp4FXZOGNg4nqfe1WUgvTcejF8=;
 b=crg8Je3RCpXGZDYgpwzfLMq0ZxghOXuWQDA8V+MnjhkpIb6Yqf+1fCR87WU+15T+WF
 i+r4DC44DuMd/bGmTRvrrGR5LaTbZOxFtQNvTIvR2A1V7RUil7/gk3NYm/Tc++Hi1vlx
 D9ul0lqfz6kfbXiF0PAw+1hLjuS9ERnQZ/YI7Kb63lc93wXmfsiRvoLBfk1vqapKPoKc
 eB0onW/CUnHTnuCskm8fy6b1oi+04K1U3fZNQN7K8nJIdlvsw5Gt8Ulk309Dh16aAQyS
 OBgPdPWPSlTLKOY6oxtAoheB+9GbCIuwKwGqj5vv7WpYHmQmyJ2iBtpmQutSJgbbb61C
 N9zg==
X-Gm-Message-State: AOAM530W/3uOGl8nHmh7dActSPe0UPiPq8y3DnliH5tNDSJa9EDOdcG4
 d3bv+aZ6ZZXAAqfA2OrYcg==
X-Google-Smtp-Source: ABdhPJzVEWjIXJ8MMN0dd8KKjN2BiOpuWDUv+vvFANJSidkB/vdhoZbY14Xbo+ZjySetFCFDzYfolQ==
X-Received: by 2002:aca:a84b:: with SMTP id r72mr19390246oie.14.1641843946416; 
 Mon, 10 Jan 2022 11:45:46 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id d3sm1341207oiw.52.2022.01.10.11.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jan 2022 11:45:45 -0800 (PST)
Received: (nullmailer pid 1377109 invoked by uid 1000);
 Mon, 10 Jan 2022 19:45:44 -0000
Date: Mon, 10 Jan 2022 13:45:44 -0600
From: Rob Herring <robh@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Andy Gross <agross@kernel.org>,
 ~okias/devicetree@lists.sr.ht, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: convert Qualcomm USB HS phy to yaml
Message-ID: <YdyM6KlzCBZBvXHg@robh.at.kernel.org>
References: <20211230000740.103869-1-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211230000740.103869-1-david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_114547_829786_3C01BF83 
X-CRM114-Status: GOOD (  11.65  )
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

On Thu, 30 Dec 2021 01:07:40 +0100, David Heidelberg wrote:
> Conversion of Qualcomm USB HS phy documentation to yaml.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> v2:
>  - changed uint8 array to matrix
>  - improved clock-names check
>  - move reset-names items, adjust DTS files later
>  - added clocks and resets min and maxItems
>  - if'ed resets, since apq8064 doesn't have phy reset
> ---
>  .../bindings/phy/qcom,usb-hs-phy.txt          |  84 --------------
>  .../bindings/phy/qcom,usb-hs-phy.yaml         | 108 ++++++++++++++++++
>  2 files changed, 108 insertions(+), 84 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
