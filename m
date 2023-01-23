Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F34DC05027
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 13:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGRHo6NAIkNyxcDX2ASaHFMDIp3CqGBxsEEEWwWFxME=; b=OyfyWp3iSiacqv
	jFyUTSmV9qgXD3XGVhd4RSklr8zb1nZ8xrxzb4CzHchWbDwoPyrBLPhBjEqT0zu4fjjeUpr4Yb4VW
	My6BBYc3Mzg2xnsFDLPQhOyps+nlbQb3Mxx3oZW9Wfybmziw9+km66uftu0iplTLTE4oPoqvWHF2d
	6xDYiT00gqLTfhywF35zie7ac1KgG3kMivR0W0GTDC6QGWYvlDqyPYUlf/h8p3kosnxvVGdiUmtql
	UKngfoJLV86cf2ZDdypYdy3cRiqVdD4reVFVLiJTwjCOJ2hopcYN4vXVkw6CfITDqpfVQW9mMlV3b
	/4czP3Sx63ImmKHhDqyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJwus-00HMga-Vd; Mon, 23 Jan 2023 13:31:19 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJwup-00HMfx-K6
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 13:31:16 +0000
Received: by mail-ed1-x532.google.com with SMTP id z11so14600119ede.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 05:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GkjxihmP/RRWK9VQjwwJeH+rgfGTtQy2RZ4I1GLbrDU=;
        b=vHSNQV/7Cvxi6YzE+tqk87TGmEcBMgLct+Terv07pZF3n71NZN6mToSwaUAOYpTCga
         pJy06uVoXqTFZnC/6UBpYWDt9F2xS20jLL1/fbBNf6PvUiIa2G48SkTlJ2oUujdd19i6
         Bo6JAlZGxR92dinRojnEsD+8GSYo4FavkzLX/6x5a0RDgRy4e3BSoUn7F7iRbceS1dG9
         t8M54LxReo40rfyoDI+fYKvpZ5adpC84aEbwymRhUVehut/facqPw2EMMGQqR6UTAe5N
         2CCp0FIMYeVV25x2LKKoSid3BCYLbNMk5fi4mpN+j+FtXoV6aKoyL2FVOF2rc7YE0cFn
         em4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GkjxihmP/RRWK9VQjwwJeH+rgfGTtQy2RZ4I1GLbrDU=;
        b=ZQDcKON5QnEyURCOPu6JNI92yX2a7A5i86O16Mwk6PgGpF59YcDkfv5NTaSuKxs4sp
         9KTEU5z63/s0h7fsa5UqOiRKMIUmhTtFjOmlwbwsTKv5pdHM8R3REcyMJS2Te4h22DH9
         I6O6TvFcDBHBOMUaZWJ3e9DSa71qhhnB2kpA1+D1WN+goP0z3o4ss5+VS/mWi/MspUvj
         SQ2a/K03qgG4O7lrl0HXto2ZQaBlCsn9qdqKjEjmU3qtyBr/aRIScA7GbxxcgPm8Rbjg
         eU/6CMAynAXU//h9dpP/Xx9u1nleW9/NCj+AQPbaTicQDSB2CcAgvua1iRVU70UJO6rt
         ZPSA==
X-Gm-Message-State: AFqh2kpz6p7tDfo6kVSd660TA0IrjF/IhqO1OIPlww4mSDkkQj4Nm9+E
	DfHHNjrXrqhWexlLrgXCnTpgyg==
X-Google-Smtp-Source: AMrXdXs57UGIVOWJpcsAwWfrPzF3LhZYGwEOq+MGAQpt7mZGi71TkrneWPjA9V5dUxH1xnOKP3ESHw==
X-Received: by 2002:a05:6402:2315:b0:49e:6a70:d9a6 with SMTP id l21-20020a056402231500b0049e6a70d9a6mr15642326eda.25.1674480673013;
        Mon, 23 Jan 2023 05:31:13 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 18-20020a170906311200b0084b89c66eb5sm22003696ejx.4.2023.01.23.05.31.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 05:31:12 -0800 (PST)
Mime-Version: 1.0
Date: Mon, 23 Jan 2023 14:31:11 +0100
Message-Id: <CPZLUWRUS9F0.1JP84TJFB2SPQ@otso>
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Johan Hovold" <johan@kernel.org>
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Vinod Koul"
 <vkoul@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.14.0
References: <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
 <CPR2LS3SJQ3I.Z7UY505COG3@otso>
 <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
 <CPX2VVT5EUDV.2LH6VI2586F02@otso> <Y85WqDrGXAXp7gS/@hovoldconsulting.com>
 <a18359f8-6495-dbea-2323-8ab73bbfc472@linaro.org>
 <CPZJ4F39LES0.ANG4EP8EUFI7@otso> <Y853iEBf1e7uh/wX@hovoldconsulting.com>
In-Reply-To: <Y853iEBf1e7uh/wX@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_053115_696910_6B731694 
X-CRM114-Status: GOOD (  17.49  )
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

On Mon Jan 23, 2023 at 1:03 PM CET, Johan Hovold wrote:
> On Mon, Jan 23, 2023 at 12:22:32PM +0100, Luca Weiss wrote:
> > On Mon Jan 23, 2023 at 12:15 PM CET, Dmitry Baryshkov wrote:
>
> > > There are two SERDES regions. One used by USB part of the PHY (at 
> > > 0x1000) and another SERDES region used for DP (at 0x2000). As Johan 
> > > described below, vendor kernel handles the DP regions in the DP driver. 
> > > Possibly this caused a confusion on your side.
> > 
> > Ack, I think I got it now. I also see the registers used downstream
> > now, e.g.:
> > 
> > techpack/display/pll/dp_pll_10nm_util.c:#define QSERDES_COM_LOCK_CMP2_MODE0             0x009C
> > 
> > So now .dp_serdes should be 0x2000. Do I need to change anything else
> > also? I think not?
>
> You also need to add new dp_tx/rx pointers to the offset struct and use
> those in favour of the current ones if set. I think we hashed that bit
> out in one of the previous versions of this patch.

Thanks for the persistent help, I've sent out v4 now, I hope that's good
now and we can get this into v6.3 :)

>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
