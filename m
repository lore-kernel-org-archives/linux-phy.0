Return-Path: <SRS0=6HJ7=IV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB3FAC433DB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Mar 2021 21:01:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A49961994
	for <linux-phy@archiver.kernel.org>; Tue, 23 Mar 2021 21:01:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A49961994
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M/tROJNIGX+UfvndTJy8IQwpUtSrDgLnpRd9qYFhN6o=; b=TUqt+FaVh5vn2M36hHb8vVNJ4
	bKXVR6eCLrKYGuM7R5I3amk9a47FJVdtUMn9YtlU7w8N5dWownwmezGHCLgQPvBGoAbYJ5nnju7xu
	Y8TlQIt29nSnRpOnYllq3mb7dHnseGvJ3fk9xKJku+m7RYRNZ0ANP9+nYYYo0lS8Iyq3s+1gI6q5H
	JXz7OE7MXWom7Zyid25+fx78YnurHvO0b7oIyq6ubpbDdoJd5pdBEpfVnfJw+CeR9J9el/yLG9dHJ
	711JRYS7SaRkrIbiEVWq4APPSt1YR7cGJnx/IYZuuRuv+NQ0pYXsE7kP79Lolvv10Aunh+rxXj6WT
	D9wxpromw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOo9k-00FkiP-SQ; Tue, 23 Mar 2021 21:01:41 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOo9g-00Fkhk-4H
 for linux-phy@lists.infradead.org; Tue, 23 Mar 2021 21:01:38 +0000
Received: by mail-pg1-x52b.google.com with SMTP id v2so12986923pgk.11
 for <linux-phy@lists.infradead.org>; Tue, 23 Mar 2021 14:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=j+3BKrM5me7auELaARAPwAS0rivnyHdPonNpXLIjgro=;
 b=hcjviBgIQ6fe5fnQkbvXjT0gP4wOpIiSxoK0n/0cLGbkVhMOQH9HkpHhxhhQGQe6TL
 epk2vtpx/VDLXbDMJPsb9JxcJFztD4XrY2b5qFXD3zCD/yiVCAr9ApuCub6uoxGDmcKc
 XgjPlyZmWF7uYz+KaOC5eofj9eIzLIAkcsbBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=j+3BKrM5me7auELaARAPwAS0rivnyHdPonNpXLIjgro=;
 b=AXAjXLiIEYNSbxHfDj1eePzCDYPXbkRa/sR9wuiRmdHuxKm1CG9aJZESkDLxAekbib
 bLHtdjEsMArJY6pC2YnWSzbpKgvugHKzhxuL3L8Wk3d+JAjREt5pGxSnpw0V0zvYfkIY
 /zKqIeX6qV25WdBHAKa2qZA8LrYxZEbRb9AA8JXevrOwHGQh1cYQECAjIdIdXIgHCnIK
 ZqG5VLDg2AWZZllC1uXNE0vEp0bSTzvZ8vHjXn5FwX0s/OnKDsrxIxmEXI0YuuzpFp+S
 8YmYg4PxcZTXQKtml/cm0cLOC8XZ0RHhyVjoC0xodpV5lO5hwPgKmHcDRE4Llso1Tvsv
 bg3Q==
X-Gm-Message-State: AOAM533V4GZx2Pi0wtQCdkC9pS9UgSi+WOkMchzjXWZIkdTxu75XyJde
 vVyAhJHhW9XsKbIv8XkTsuK9PA==
X-Google-Smtp-Source: ABdhPJy9VXxmhfEyOS8ICDrQ14e4OC/h87W74XrDtXDEVQUnVRUhGKTFvcqy27HUIUkaRwpqZ6HO9A==
X-Received: by 2002:a62:78d4:0:b029:1f1:595b:dfdf with SMTP id
 t203-20020a6278d40000b02901f1595bdfdfmr149205pfc.81.1616533294364; 
 Tue, 23 Mar 2021 14:01:34 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:84ac:62f7:16a8:ccc7])
 by smtp.gmail.com with ESMTPSA id c24sm102212pfi.193.2021.03.23.14.01.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 14:01:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
Subject: Re: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
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
Date: Tue, 23 Mar 2021 14:01:32 -0700
Message-ID: <161653329214.3012082.3763700105699946359@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_210136_376193_99D5F807 
X-CRM114-Status: UNSURE (   7.19  )
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

Quoting Sandeep Maheswaram (2021-03-17 04:01:39)
> Add the compatible string for sc7280 SoC from Qualcomm.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
