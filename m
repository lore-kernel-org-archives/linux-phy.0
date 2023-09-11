Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89506EEB580
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EKDevgOfQ4qvPi72YHUEFEhZLhrJIsfPpuoR9hLngI=; b=hjU5Zd7WErX3j4
	vGkYFVtbtrcp/Znz1NnSgBZC7pF4dPNir4I3j2kJ3yCY3abWssAjEbLWzVdCGBg7Y/Xe8m1kFrr5R
	zAyTkVTgXkpHQFquQ4m9vqXq8JGe6e2F7XHlN6XZML8seFUSGzfsD2oHGTvGnyBQ2aYMMSaiZabbD
	vvTBKLYN5w6bLD8jDO7rchE54gb95lobhftVRdQ3RE5BjejwI14/HKQE8Oux8YK2VU56CqQZpb43t
	LvZFhv4i0LI2Ag2wVZOGvagAeXBv1/Y7MbL9dK9UM05nPKu0h0bXwvbmT3LRMa/tFeXjp1qEucf3P
	2ZoLWStL3NvK+X/6L3XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnjp-001ISf-0w;
	Mon, 11 Sep 2023 20:42:29 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfnjm-001ISG-19
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:42:27 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d77ad095f13so4117510276.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694464943; x=1695069743; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JEIA/8aud3vgSnOzW2FtgQVjHmTcuWpn5RfnhreW1sU=;
        b=obocl3+IPZcNKfsn2nyEGJ1GZm0FEKq1Qp4Jp+HwZk8sXZfOe7lag3TuAMAwzAKLSG
         +C8XG0TVNQBhpHv4pFGjLetPsm57wy8DpBdCTVphHsEKSMSsucc9KV8RLCHB5AwWZA32
         q6kcZsboqMPa0umSUTN0Nu3s3YHXEPttQbbESEXpPjxxO7ck7zPOm2zn4+iRdRuoZ7OI
         wRBGZ+rCL5tb8ov+sLPG0Z3sGktI98VHHMbpFSnscrx1mZTtrowQJl+3lv1opQRzbhET
         Yk0fSaqNsrkB0zKqpjdrGf0XJjK1FUpQadFymxUhjHCEbWDKoQ080e0I3ts8vj8hUlcq
         Vp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694464943; x=1695069743;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JEIA/8aud3vgSnOzW2FtgQVjHmTcuWpn5RfnhreW1sU=;
        b=Y02ejX8LgA8KpxatmCAg/7fCALufGPbWZkOP5qIQRH6KTy6OFGxuKD3hl21HgepnNE
         mYVs9GH43HxjQb4gxfv+YULN3sjZWqEv71Xa050Eur7PjDykShwiAN7nvoApoFQuiBC+
         BeeXxPE+Mx0JNFYI//5fLVZbCunQy+Xb1HwVXh/TsPKYId3HGPWYqlNqcVqlRaVfBRoC
         JEo6DyEapKWqggGx9+HUgSjuKVjmFuEaJGoA/C+yDQI5QQQTda5ZtDZe3/u9TLqfKlqh
         TzG7zUqKAqY9GOlYNjai2Y7TuoBPHMoUBMUWvLoivMWMh48+T1tqQxMTk60Yi2Z4t4Ag
         Bybw==
X-Gm-Message-State: AOJu0YySRnnuGMkr0pg22j/auoRabXtvMPiqgCcn5YjEGdG/SA/ib8DF
	7EjgUc4h0fSyZgqXl6oAdk34QgfypTc6WfMR+XhVmA==
X-Google-Smtp-Source: AGHT+IHKTl+Tk7v4VRWc2+pmMGmLTBvoSAN0x/s8olCSqdjoFR/fodulyY5AUr959b9GdfN+mlpf7C7gQvu8KAWzGCg=
X-Received: by 2002:a25:d85:0:b0:bf2:b00c:f09 with SMTP id 127-20020a250d85000000b00bf2b00c0f09mr9895098ybn.40.1694464943168;
 Mon, 11 Sep 2023 13:42:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
In-Reply-To: <20230829-topic-8550_usbphy-v3-0-34ec434194c5@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Sep 2023 23:42:11 +0300
Message-ID: <CAA8EJprLTBMqTRJ9-qrYVaUf1D+YCw9Ndq55LUMiYfUTF7CuJQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] 8550 USB QMPPHY fixups
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Adrien Thierry <athierry@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_134226_413221_7DEC6F1F 
X-CRM114-Status: UNSURE (   8.77  )
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

On Mon, 11 Sept 2023 at 23:07, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Inspired by [1] I went over the 8550 QMPPHY init sequences and found
> some inconsistencies. This series attempts to fix them.
>
> [1] https://lore.kernel.org/linux-arm-msm/20230828152353.16529-1-athierry@redhat.com/
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Changes in v3:
> - v2 except it now compiles (missed .c change)
> - Link to v2: https://lore.kernel.org/r/20230829-topic-8550_usbphy-v2-0-a72f43311d19@linaro.org

Thanks, this looks good now!

>
> Changes in v2:
> - Pick up tags
> - "Q6" -> "V6"
> - Link to v1: https://lore.kernel.org/r/20230829-topic-8550_usbphy-v1-0-599ddbfa094a@linaro.org



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
