Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 215CEC61D9C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qLWCBPZlwhzI57DPkijrMGR7WDCarDaHEvAHdiCiW4=; b=aSy3Kwd93Aowm4
	uXC9nLEfIzrKg4d0wpbXBuUm59cnIYCa1/ZCcFiscooRYO1xmJnkd/2fkgk3QUDdRyMSmj9ck8tdx
	c8lpfKQ21KsToCVmDntr6UX4hS74MHhhhHbIty6Me2jjRfQyt0gnm9j+mHgjNIsSGB0vJLy8pVF+1
	G7zOc2aceI/Nlm99E3uNdZBjw93PXitRgzeeQevkCXsxDc9xwfz9VlGUDCQe955Q9/ZO2lyxLjf9x
	XDbssAkYerv1oqHD33pKmqbI2137Pi3uGb7gRKAeggnXxe1hFBIWEIWaFqsKA2XuhcRsxLvgTiKCT
	VqbCcChACBREmQMCWzRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kMr-001QAa-2g;
	Wed, 22 Nov 2023 10:22:01 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kMo-001QAG-2t
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:22:00 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5cc5adfa464so5628507b3.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648518; x=1701253318; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/gZ0hKqy1f9kc8RcgP1XxUJkPdo24HWoCQORei+jumU=;
        b=UhiGaGgHEtwHlQgNcjyGmsYEGq61LxtYvlsmP+zZ+Sq9ZXBG9PzpfGlg98+d4ASeDt
         jN+cNhUPdNhIKvZsosDRxINyu4Oq4M1Cj4pBwfXIb9ccxMnei8HyBHNnXCkj8iidi+so
         YxIlRpTe2ZZZ5zLEsfAfDewRPVep39TkE+EwF8qR/6/Y/fdIOYW9vb2+uThmTkoHTX71
         m/xtXRBerCHo7bldYNEgdwIjf+cIGcOpFAJUcCluk9Fp3Eqp6vsdTU6zYajJEhLlVuqW
         PUQoj9cF4uwg15ZeO9RFcYXA2YHV7FPizoQS4hAbf1753A2X9BHjT5117nsIhXd8bJ35
         2MAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648518; x=1701253318;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/gZ0hKqy1f9kc8RcgP1XxUJkPdo24HWoCQORei+jumU=;
        b=G7O+n2fAhGXRvH6GRZ79ezCtHmCMpnW0Pbob1+ABPgmZzabm2qtSLJ9L2Ave4BgTql
         HoqQma1JbjbhBb9y96++YIEcl7nXuAw+CizNTq1NzDWp/vSJXNtivX59dtM3NFouy1vV
         zsLE0KarofHAgNB6CcYm4NPcmNigu/eRiQOTqqqVJd2k51k86t9t+l7jjzgTLQB1qKX+
         +0PDf3a6SsnFKVifxgxB1rhHzrCtWlP7qG6uitSXOub+jFpfa60EtQpOETIbk/h0MVSD
         5SCp9vpndPrcY+x7/PLVtyVIAWMQ46FvVur2fyNQbS8cFwNE1hCN9ulc2JJS4bcA5Lrf
         CjMA==
X-Gm-Message-State: AOJu0YyPRKobJ6naMZML9/atlrPtGSevJjEBy8SeCipB6GoA3J72QBG9
	qnGsGsvuqfFpMb+Jp50A/5iVzkLtEKx2VSxnIG+Tog==
X-Google-Smtp-Source: AGHT+IEeRQ4qsIvFGcEJIwsctyI3Q+u4v4Ik5e2P38+EqeUPIaxGM5oXZGPeHDuCv4isrbvSHwDGDrO6Y+saFepsexE=
X-Received: by 2002:a05:690c:408a:b0:5cc:8f6f:39c0 with SMTP id
 gb10-20020a05690c408a00b005cc8f6f39c0mr713906ywb.28.1700648518161; Wed, 22
 Nov 2023 02:21:58 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-6-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-6-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:21:47 +0200
Message-ID: <CAA8EJppSmWDxCqgKOhbr3JwhKjSvSB89HxtN859EeEPu82nxJA@mail.gmail.com>
Subject: Re: [PATCH 6/7] phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_022158_932943_E3E6C049 
X-CRM114-Status: UNSURE (   8.50  )
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

On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> There is a variant of V6 offsets that are different, the QMP PHY N4,
> and it is found on the X1E80100 platform.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 ++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  2 files changed, 52 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
