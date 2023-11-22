Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44151C61D9C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5imz4yUXoJTLMz0OSUxrZ44hdil6aG6B2IXD0Ay1t/8=; b=v9oATigqu5dlh7
	agFxlwaTDKBq7RQtqHXXQ4s08hDve3UMOZ9ENhmo/jstpZqwvq7kCUuaY/ug4KErlk2Lr6VcwdsK0
	xUYyqeTQ/rQ/GRdjbk7wqtHGlC5fwjdvFq++REfLGoEqNW9yfdGu948oucW6PBJcI5NagvXeNdrqk
	QwaYUPjFKwhilAGVL0oG670o6dkoX6iY1exjJhPR05AcqlEG66u7sSZyDqpikCNb5sjIdDUU+w0Zt
	jK+rM7LmNIvDF886r6uZRrZHiiKLKCZqfKbAUKNE503quwl+Tdd/CwLNeSBfVMkI6abX3C7FDlZeP
	4BD2QheIss4pfUTUYegg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kCH-001OjW-36;
	Wed, 22 Nov 2023 10:11:05 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kCF-001OiU-2J
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:11:04 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5cb4ee00da1so5817267b3.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647860; x=1701252660; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PsCyThm4g6sI5epAQyEGxjAV4aR3jzwAzhrpvksWUpc=;
        b=KoVUFwG56WeqPV67wWDqdF38L87MuJ2H3O1+pz1AN0sE9lUnXdBS/PZWMR/SRXqOMU
         aJp9vrK2ceG15D8JMbPK6pM7em9TVCYXdr7/8+siZjuU427MzF3Px7p5pkoMuUt67QvZ
         ESPuqtbO8L/bWC53Hwd0jGXeWXXehiBXcjSDqUtFLnMcRYngZM7tUxohVDqjzZGtOLAz
         jaZnGLfrqNr3ne+1d3U0lzaAoVjniIZjtq9b9X+MgE/gzzeekT+0gpZGhODn6sVK2Lz0
         jbysfI/fPoxPZhzJiqM6rn9WCIAnLGuxRn1Wh24Qw8gYIPtKyhVQI4yM1880bbjbayrL
         BZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647860; x=1701252660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PsCyThm4g6sI5epAQyEGxjAV4aR3jzwAzhrpvksWUpc=;
        b=uKd2a2lUf2CSovMqxHPoFDxDhfBW/8IL2BS2/6wGcdrMlbkZhAiW8yQLL7+G8McuCL
         6ATl6S+A2YWf8zRZAYZkczJ5DvUqJcAU6eD0NvzsM2o23xCqooFivyy83MNSrL1WekS7
         0bE2IMe79O4KlY0LQQltatrQeO1nMpC5dFf0u+P/5/O6l1j9rveNQkGT8izt4yB6olFo
         sLgrfb447pXXDo8BgYbibcbOhe5qkv1MpmKxhxA9cSCdKOyvBx0z8TG1tfE+DG/EcwrL
         Ib64pDLZMzoJZn1dyFCFK7xXILl180qlI6szjzFGXU4RBCBVxvYK3J2hC2EH45PtxPkb
         jqJA==
X-Gm-Message-State: AOJu0YxekHrnFvP49kbpg685ce4u8AptxqncGHna0mDLw+AgyqzK7ow1
	FjtT3mwXOBe9wOszluvvvYmcyCMC8W3LWo90pu4mVg==
X-Google-Smtp-Source: AGHT+IEqAhkglUSA/Dn8loksX8eQaBVIwCLF6JA54T6lxkJY9gpJDdPmDPFJVBiFwwTK3wpD2FY5pWOJcJSnNjPLaN0=
X-Received: by 2002:a81:c74d:0:b0:5cb:65b8:7cdd with SMTP id
 i13-20020a81c74d000000b005cb65b87cddmr4070036ywl.1.1700647860502; Wed, 22 Nov
 2023 02:11:00 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-1-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-1-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:10:49 +0200
Message-ID: <CAA8EJpouV1EfZDz828xa9bJO=3Q5sDNWwhhC4tdCsXrTNNSSxw@mail.gmail.com>
Subject: Re: [PATCH 1/7] phy: qcom-qmp: qserdes-com: Add some more v6 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_021103_764661_507419CF 
X-CRM114-Status: UNSURE (   7.85  )
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
> Add some missing V6 registers offsets that are needed by the new
> Snapdragon X Elite (X1E80100) platform.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h  | 5 +++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h | 1 +
>  2 files changed, 6 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
