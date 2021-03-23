Return-Path: <SRS0=6HJ7=IV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2928C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Mar 2021 21:02:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 931D861937
	for <linux-phy@archiver.kernel.org>; Tue, 23 Mar 2021 21:02:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 931D861937
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JvZ/FF2j0OqOBh8LLyTjFRuKBefIRKLol+BklXmNazk=; b=BE8st4jxvMcxHA7bGBDxOD4fd
	d8IaZcEonx2YLEMdk33dc+f7rXyM/szSpZdCC6o9xFqjUR/b7mma6phg6Env/prNY+X0Mci1LvNDi
	1rwtxpMuN9wsxd/yUhphBU6kO08E0QH0GIxxMb3s0NGnUsY3PYIXFvcXwab9jyjRJW0k0frIZ5rmx
	1lJaRdH1y754pQfn1ixxY1whdY5VswjQOIdLCDGj7oIKjKLHXM+ShyBvtXILt/AU3v1vwpUvit9WC
	9jXNRkqQqVsOsNAOy4rf7GXg7BpHiQBoaAQLOXaCxmXa9JTjBcmw9Mq4pqkfs0U7ElUYxtEq8yJo5
	MDoz+XfKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOoAW-00Fkko-Ts; Tue, 23 Mar 2021 21:02:29 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOoAS-00FkkH-9G
 for linux-phy@lists.infradead.org; Tue, 23 Mar 2021 21:02:26 +0000
Received: by mail-pg1-x535.google.com with SMTP id h25so12995607pgm.3
 for <linux-phy@lists.infradead.org>; Tue, 23 Mar 2021 14:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=0nmdLKTQUU2U2MlvkwteXMP5AIq4bw0Xz/4Qd0uYKt4=;
 b=lWuQcN3sK9Ca9FEj5KeA4qv6DqeYqUD11pu0cCKxPc6Eaoj5OyTu+43rBNtwonazoa
 wTK251fZxSM+LfcEGxYIBj0jOpyeMZbTbdbUC4uH1BGj6pVeOTb+GSva15KnPeFN2k97
 VRqSeNt/1nM5ZgTa37IkDyfwn+g7cucu5xpg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=0nmdLKTQUU2U2MlvkwteXMP5AIq4bw0Xz/4Qd0uYKt4=;
 b=lgOC5OYryWpQQyKCvVGW+HFjLj3AD5gMOSq9XEmXAEP/fVxdufn/LS8nTqD62ZJhyP
 xk6DFeeY+PpMRE3Z3Q68sRmI7L92GzzqDBAdjSNnD+4b7bdlAR8FEbuZREOig9iGk7a4
 +Fm81b9Xrd4n8HwLkYYrlsKGm/toRlMCJHpWOMiXsk9YR8cNPuIuUoTEcMSMR3HJfwuO
 ClAsg/yftR6hZlWTsc4R6R1XAMb3r7Uyo31+eWBHa9Wjf82fPeO7+t3olz3vc0eiqGum
 mxX+Ybi9PI5SxecWC6YS0xnrWCPcXTMLyiPSDaRv7tx+M8zufUUa8Rd1SbREdbBJzohm
 zQaQ==
X-Gm-Message-State: AOAM530DVLrJvFDXpLq0wxVvT1f1ZHli7/10YEGIPYPZaU3l+Lnu3RWB
 48xScdMok3fH20XyWtPoVo/3KQ==
X-Google-Smtp-Source: ABdhPJymVqgWCHhY+IXyAkrmtX70mjVttdAPK3H+B3EXnXCLpFLS4kYrDMHtxJRkN04PoUGhyOQ2pQ==
X-Received: by 2002:a17:902:e549:b029:e6:6b3a:49f7 with SMTP id
 n9-20020a170902e549b02900e66b3a49f7mr171266plf.52.1616533342892; 
 Tue, 23 Mar 2021 14:02:22 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:84ac:62f7:16a8:ccc7])
 by smtp.gmail.com with ESMTPSA id c2sm109388pfb.121.2021.03.23.14.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 14:02:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1615978901-4202-3-git-send-email-sanm@codeaurora.org>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-3-git-send-email-sanm@codeaurora.org>
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add bindings for SC7280
From: Stephen Boyd <swboyd@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>,
 Sandeep Maheswaram <sanm@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Doug Anderson <dianders@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Kaehlcke <mka@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Sandeep Maheswaram <sanm@codeaurora.org>,
 Vinod Koul <vkoul@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>
Date: Tue, 23 Mar 2021 14:02:21 -0700
Message-ID: <161653334107.3012082.10885367970914434263@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_210224_501869_5CF37EC0 
X-CRM114-Status: UNSURE (   6.98  )
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

Quoting Sandeep Maheswaram (2021-03-17 04:01:40)
> Add the compatible string for sc7280 SoC from Qualcomm
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
