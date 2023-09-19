Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB22CD5BCD
	for <linux-phy@archiver.kernel.org>; Tue, 19 Sep 2023 15:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMio/rCiXFyTI9kgPZS7V8kWPAdFxa/6EsIYM2kLNyc=; b=OP0z1gd/ZLDLJD
	a36HEPCBfGKmwpgiuRNKOhJnlUU52VanuSXpPsbH0MW7t6waj5KPsTN61X9Jd6KW+Ipb9w8O4MpYe
	FLnVYwNpdFQlpt2a0BxPECJjeyPf35ldFWQVzWX1x7NcQvUumffA9wPC4fQApGITSXDF53IP9UYm4
	QtPrHwXr7R8mbknYEFVqI7fRRPs3fcMwRPawE7e6RzEYDF2AmbO3dsvyJL85BFO0VojYno6iWlmuc
	5lDpITchbt73nQSkv4vaBnKFqzgAudibF1VtPK7tMvOzPxhMCnAXWPB6M3YbLnawjxtecOgGSpGrF
	agkE7u4Qrnhpnt5/nUaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qicP7-000jtl-24;
	Tue, 19 Sep 2023 15:12:45 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qicP5-000jsl-1I
	for linux-phy@lists.infradead.org;
	Tue, 19 Sep 2023 15:12:44 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d7ecdb99b7aso5544355276.3
        for <linux-phy@lists.infradead.org>; Tue, 19 Sep 2023 08:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695136362; x=1695741162; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RwBFLBCefbsy21c4npTbAU6eApQw+jfQJ+Mmxu8RhRA=;
        b=xSTUK57zxG41HBgylFYIoK5xWxembTsS8U6lCYkX8YEub7phf6ER+UXxRgx8oEEAv6
         Q/segtFEM9YXgKrY3BriuSUDARGzgZTb/n1AKVEbnV0c5ayUN0NafOIDwDqGE+7MmUPB
         ooOuOAAOXw3U641wgaEI3y+oOcBoVZMzTM7LszsiGXF1l3wx2VTXnTotVNaNYjlGNeKG
         ciJ3Lxi1S1X1fYPdMm9Zz9cT25vjwkz/X8cicPyY1gSz6kksAtjM7gt1n1jO2jwvl9+H
         FlhZeIEASTfQ767ka8fHOWLaRlacMHasV3NygSYtdOhv6/nqj72MeJMbj3XbHKVqnt7P
         E2bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695136362; x=1695741162;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RwBFLBCefbsy21c4npTbAU6eApQw+jfQJ+Mmxu8RhRA=;
        b=OGk1G+Uq1rDKKNY3fEuVE2L59FOiek0sa9VYjHP7P4a+IowJ8weqdtiulUYSm0ch5+
         I5HUMTzSs09U2mfcBFwOJC7mDyoeqZAURRgg9vjSrCSvC3qrbJVbt6rfwlpJ5UgdRBtN
         ITQ3tM56HgybzsvnFfh3dWEOjNHL5mGUQEBd2Q0C9f2wJDKQpuS5yT/7f11y8CZrVfYp
         9AAOTVAWf+VqG7n2cJcyqMBwk9V6aLy4kVIJIcOm/ERGKflHxtnOu3qHHjRJM35i+wEQ
         +m/LHmDHT9ddsw05PF6hgqJcPZCsGSmFHrAZo7i0eN8TfaYonUHg/h4DYE4nKdnkcKOd
         RIvA==
X-Gm-Message-State: AOJu0Yx4O/oC83ZWLv1EGqcvwRV7wrX7Yds6K3nuAfb2H9Oq9PG1ncPT
	U5cMlMoXeWhoBedUuYYpEN8V/HszibQNjxzSnb4qyw==
X-Google-Smtp-Source: AGHT+IGSY0KfKzL/8laxx9lvgeIq6kZxzBsZt5dq8iJrSTHyFpS5ghMNwzig2inkSJFiqO0qXFR1oOfDMzboG7t3tJc=
X-Received: by 2002:a5b:c48:0:b0:d81:cb92:337c with SMTP id
 d8-20020a5b0c48000000b00d81cb92337cmr10601197ybr.54.1695136361868; Tue, 19
 Sep 2023 08:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230918205037.25658-1-quic_nitirawa@quicinc.com> <20230918205037.25658-3-quic_nitirawa@quicinc.com>
In-Reply-To: <20230918205037.25658-3-quic_nitirawa@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Sep 2023 18:12:30 +0300
Message-ID: <CAA8EJprAxUhipHS1+BRRVo8o6gubNRJk12msMgOraDjFBo8rVQ@mail.gmail.com>
Subject: Re: [PATCH V4 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_081243_443519_069FE204 
X-CRM114-Status: UNSURE (   6.07  )
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

On Mon, 18 Sept 2023 at 23:51, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
> Add SC7280 specific register layout and table configs.
>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
