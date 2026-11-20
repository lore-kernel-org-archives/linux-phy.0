Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7132F606A33D
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 18:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TKqvygpM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jX9oAR6/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zfiblge1JyGWMoBkxEHKORQU5g9lCH6LeC/Ys/5bD7Y=; b=TKqvygpMWoXlVuQFUs8VbUt+7/
	znFiUba01lkRYXicc5ZVcYjGeaDAv2mf4KsqzyLwHBb4jPeAEnGmWhAlZoBbKdX3V2GC7ggnE6sOJ
	1OboByFJBMaAf2tY89sr8sj279DNY+E+xFwMqAIEUTEg1TGk0XI4qmq214GUZg8v1vTe3YgM+yrpR
	kvPoPv0CxVgzS0sXz9axyiH7+R2T3W+Dv/iS+txJdm1443KWPqBVH5cdexaFMDbNEFmXtzkZ3u5Ts
	wkZJG+BQi228xCwncx9wYhlKTYEtY1qmifxVA4K608Y35RrlLmK3cilfgOAmykFwf80S2+kKC+eKA
	jmBAcLPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUTn4-0000000FzWd-0HXy;
	Fri, 20 Nov 2026 18:56:54 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUTn1-0000000FzVh-2DLS
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 18:56:53 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-8b271e573adso620206b3a.2
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 10:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795201010; x=1795805810; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MbVQtId4GZJpOwZIgQ5IVkC1l8C9teB2jkENg0QieKg=;
        b=jX9oAR6/f/l653zu63YzknwOrMlds+F3jBMM1ZHskiJZzL24KAR+9h9quUpmJRzZZV
         c4sK6ILGGKZh2svW2zo9NKIXgW+o/ROoxu/H3TFgNrVV6qjSFurPo19Wr6uCpGWufWwF
         iGlqzJcdp81lgv5PFb+pvLXGBygxUFWG8B77+ZxW3NwT2pXwxGJc2sE6Affovprl9Rac
         xZkz52q/XQqVU9t6XURYkyXlcl8uwTjjpvWTIsRO9Woyjnr7vzBf5UfK1//BSj+crhNo
         p2o//F/coUCAw7ol3sUO8qVXJdzuCMWTDsY31mRErsqgtxw3Sy7899Gn7XfTD4OCc30m
         AMzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795201010; x=1795805810;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MbVQtId4GZJpOwZIgQ5IVkC1l8C9teB2jkENg0QieKg=;
        b=aKlSwC3Uw+Tm6xkQ1tj4R5JxZoAAv50Zm3p4ZmkHRDlnEgI0a9wg4r/5dp7gZaFHP2
         0keiXdGrXFMxq+2gbX+YRcW+mHKvTzOFLeo+qeBc5YNbVPUoAVI9uMoTk/k8MxBKIRQQ
         CcBOUtaZe3Vgrz+Frt1Vix2V3KWLYsKwMTWeSOeW9M3d9S11Y4hQPy73QFeuXbW8glc8
         Y7HaohZi9d0ktAqNA9GCjtvCdb2q7A/x12W2AknKjQUE3M4S//S1FYqq9Oz83Uo59+oA
         /uSUWrO5EqwSQYXZe5M1rnoxxZOKtFyKEpu61d9IUEUTeTxJUzSRMeCmBD/5a7HHrfDs
         Qujg==
X-Forwarded-Encrypted: i=1; AL+hErGj9yUelqpW64QTFqQMcufm5GdVFrWKsiySVPmpvVCZA613RaBwwbUv+Y72XCJH20UyKHbBlkyAzTI=@lists.infradead.org
X-Gm-Message-State: APuU4Z+0nq3dwCnmeTZCsDllMdHRGE3FKQvG2EqBUQ2Y/R5rR7IBTcDY
	0iYqPwQkpRw6352No72/hY+TWUhkZ/c6lszFVv7y0tsiO+zvswatorV6
X-Gm-Gg: AZFdTZfSz3M2rYqmp6HPHNwWB4bkA9V6UzvK/JCiT8H9oUkLCupC4qYM1elzapULMDe
	d7WV8ihuqCk078pwmDy8riaok8hga+ocfSpub0DhrqaiBmdQMWebd2pSUVXTGCVtw0ZL4CxinNx
	5L0y4YdW3IR7TdR46cu0GEXUZgL/73yn9xxuo1/SrB1gOKwevbR+yYmCnX08rW0B9bAEW6IvYti
	zZrLMJnkJj44rTf3kyeTUxQWQ6do0GQvZ/SkeWAKi7bWdlHfVx5Ocuy11TitIDBuMXe2tmGGylQ
	DT8DEEe0rKkjt3LwCBSdoJjw4rB1C3gZfC3snJYfDfBBPj5IWJ8/DZ8FnrlU2L6Z82bUjpxYXCY
	OByMNHCER6IFyb05GZpR46bXxKmKnhkLmAmK3iUu2uVUXw98DDE8y85JwafwDoQS1HERiDS/XPy
	UfN760/cQXp9e7iqFBUCNE5UfLiaUFm+3yz8ujaUlfdoyT6m4qnS4DL996qehUrIuHW4KwtyY23
	1X6UgF2q15Db8wRRLvTJekewTkC/7mC528OPfMO4MT6YVO4U2JOot3a8z6i4gZV6wMbSyS5FBN8
	zjcuOIDYWeiuPmAGqumtk+HzPHGTJ93i/DrPNA==
X-Received: by 2002:a17:90b:3c11:b0:3a6:f1d2:57f3 with SMTP id 98e67ed59e1d1-3b41c97bc96mr3964802a91.58.1795201009657;
        Fri, 20 Nov 2026 10:56:49 -0800 (PST)
Received: from DESKTOP-NM9EKIA ([2001:e60:8509:ba6c:ade5:705a:60d1:a474])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b405d639fdsm8484216a91.10.2026.11.20.10.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 10:56:48 -0800 (PST)
From: joonhoekim <26rote@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Joonhoe Kim <26rote@gmail.com>,
	Thinh.Nguyen@synopsys.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	heikki.krogerus@linux.intel.com,
	abel.vesa@oss.qualcomm.com,
	abelvesa@kernel.org,
	wesley.cheng@oss.qualcomm.com,
	krishna.kurapati@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org,
	val@packett.cool,
	balaji.kalkonda@oss.qualcomm.com,
	tvlad744@gmail.com,
	effeffe99@gmail.com,
	prashanth.k@oss.qualcomm.com,
	yongxing.mou@oss.qualcomm.com,
	peter.chen@oss.qualcomm.com,
	tapas.rana@oss.qualcomm.com,
	vkoul@kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] usb: dwc3: qcom: Use the UTMI clock as PIPE clock in DisplayPort-only modes
Date: Sat, 21 Nov 2026 03:56:42 +0900
Message-ID: <20261120185642.1188-1-26rote@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.5
In-Reply-To: <2026112017-flyover-grape-cee7@gregkh>
References: <20261119124558.1548-1-26rote@gmail.com> <20261119124558.1548-3-26rote@gmail.com> <2026112017-flyover-grape-cee7@gregkh>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_105651_568410_8D13B461 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Joonhoe Kim <26rote@gmail.com>

On Fri, Nov 20, 2026 at 04:07:21PM +0100, Greg KH wrote:
> > -static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom)
> > +static void dwc3_qcom_select_utmi_clk(struct dwc3_qcom *qcom, bool utmi)
>
> What does that bool mean? That's going to be a pain, please make this 2
> functions so you know what is happening when you call it.

Will do in v5: dwc3_qcom_select_utmi_clk() stays as it is upstream, and
a new dwc3_qcom_select_pipe_clk() goes back to the PIPE clock.

> > +	mutex_lock(&qcom->pipe_clk_lock);
>
> Why no guard() use here?

v3 used guard() and scoped_guard() for this lock. Krzysztof preferred
plain mutex_lock()/mutex_unlock() where nothing returns early [1], so I
changed it in v4. I'll go back to guard() for this lock in v5, unless
Krzysztof objects.

[1] https://lore.kernel.org/all/20261113-artificial-quixotic-firefly-84baef@quoll/

Thanks,
Joonhoe Kim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
