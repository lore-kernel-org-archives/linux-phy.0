Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD738C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 22:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQjb2JvbR0BqbvEC16oTwxg4YyHeniv8CevmxEzZBUk=; b=3FVK0/rrYupBAM
	N7GETT1zuAC1lR4Ldm2xNGAiJbDeMNUq7fSJVcn0ry4K5PgES2a5QDIiujm+G542oRBOE0mmHT63Q
	kMFFI0iT0B3yhXiDA0rACVY8f3BnLPdqliFaeasFJU3q76o164mFe2rQyxynyqyMZjvCpb8l7Ex4K
	JbRrSLCfrZBq8g8dbF0A7InTmRoJlBmVqLHN0IPpNvTFxG+nzfsniqm3saUadNkB3aKNRhdEFjrtP
	tRoN/Us46L/t8e9CBl9N+WTT7mkPFvSRQ8m6ToT6qPMankeS34/UXC+ovZwTkv5f046afGrM9FTSl
	/7/yKZPJJeVAf7StJ2pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYrt-0000000GOkf-1VEa;
	Tue, 20 Feb 2024 22:45:41 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYrr-0000000GOkG-0kaW
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 22:45:40 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-60879e3e3ccso3741017b3.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 14:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708469137; x=1709073937; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wyzl5JN8+bRH8SoabXDVr5mKJJXqZjqJuY8CXRYywik=;
        b=rfnKoHO01a0iKbhXcodZ3lBBEP+SkkCM46czGG//mRA4XvxH5XeCYbCn943QCm3SQ4
         RIlv/BUHPH7cTiqsiSc2mgKZlsJOYqAVNNXnzzAAqh6qQMq7Xe7W8BWbBpMGuVprw0yR
         FZWPdtXwdRlihfPr1vqc+zuqeWiiRqaZiWyK9I5AkUpo1BfKHsWq/zrs+u7tR9w0qmxg
         hVeeu80RML8tMLtUMBKZiEtmxbdTjbb1RphgTZEbcCIavS5iGBVFnTe6TibDqpDPI+mC
         TZXi6NobGe37pdjQW5OtEKKsm2dMzrK5vkhHClQpmLyqoZzwLN23gS9EuNjlOcDu9kpk
         llVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469137; x=1709073937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wyzl5JN8+bRH8SoabXDVr5mKJJXqZjqJuY8CXRYywik=;
        b=YIlFtQPjRj8o2KT+q5tnUaJ30qZwMavvl2WH6EDheRhXbxjeXtxQPpZkFD9qy1Do6m
         W+zypBlgIJhSI9F3jzPhgnlefYSl//HXM69ABV2RfILw5xWpKW82BPY7p+gDCCaiorNz
         fNNgjtp09AaBb7KZ0ZQ/uAiF9GMA36fbfu088gw1+t0u5b2tF55sYUHNhkV37lisAGEW
         eVUS8djP9obxzK0W9/YRobcAstym5HPjzfkLlzZXwzaVAhGGgL4f1+6XqELMAPM44tYU
         lnEMQqdQPO71mXSSRTMBVAqUivl8vr85od9mWVSORg94HLL/BmJHiVN4krtELWVFRn+U
         VJHw==
X-Forwarded-Encrypted: i=1; AJvYcCW+j7Q9/Xu/x0xk9xIMTPdyYdsNx0u8h25LTh0or+7KLn+ix9o7nM8M8qqlW/Ha5n2fC19srln48vVnFHDa4YtMkroq3jw3foi+qQL9PQ==
X-Gm-Message-State: AOJu0Yzljnn5UtwzFyP6Cj0LCMZW68iWZjTz6/QFRzi56YMCel1ScnBd
	rNSyxZidT6b4k2MWHN7eefKUKfrrmvUiMCXNVHoKsEQSjwKDMrTrDrVkPXU+kDQpMkHoU85aDis
	8msAN/y4fGMzDda4nf95Koz/bYerwTm7hxGzDGA==
X-Google-Smtp-Source: AGHT+IF+xIZ9uDKsFh6JgHxIqt3FqCkkcvbZBLqMVJBuLYitjFyRfjIa/li7CVOUGl10KAdra82TAbKJ4WHDuqP98HY=
X-Received: by 2002:a81:83ce:0:b0:603:fdc7:2f93 with SMTP id
 t197-20020a8183ce000000b00603fdc72f93mr17295904ywf.33.1708469136945; Tue, 20
 Feb 2024 14:45:36 -0800 (PST)
MIME-Version: 1.0
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org> <20240221-phy-qualcomm-edp-x1e80100-v4-3-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-3-4e5018877bee@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:45:25 +0200
Message-ID: <CAA8EJpp7LKRG2yr70+1jWAM9YHm+anfmeWmAD4cjxLq9G2qPXA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] phy: qcom: edp: Add v6 specific ops and X1E80100
 platform support
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_144539_243057_81396987 
X-CRM114-Status: UNSURE (   9.14  )
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

On Wed, 21 Feb 2024 at 00:05, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add v6 HW support by implementing the version ops. Add the X1E80100
> compatible and match config as it is v6.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 180 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 180 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
