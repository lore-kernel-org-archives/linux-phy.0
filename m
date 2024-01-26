Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28DE7C47DDB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 08:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUBSKtH/LfJTe6JXrPNMzDIYPc9xI7zaUW9/NfrjmFc=; b=k28Hp9Nm9e2C2F
	x2OC34dmcD1YQJ13Y0gbpiaFqimre7UT0EJAykEgO/+kt5jEAgWgmCf/dg5I8XOF41kOkZMO/kmlC
	tH+xeXjsvmKmdywCkwDa7QX3RK1bjfJ7sEL1fFiZTGBGyLbhK0thGQHfqoyUnm12nsw8cM4wPqKXQ
	TB9UY6X1YcPgMwhcH25cC0AJmsDMcj0YKmmt2bfVZZgEHceAYjsDpqOPl7HnDwe89HnwNG6zgz90u
	6z3M0mvV1J21THmUJwdb4Gn2utnOdYtSxGQf4iZpqu4g1lJbZF8PWdFDO4OVJvvcRW97ESZazisBY
	rPqDOj1bUpoJCvIUKNbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTHwb-00000003V7o-3VxP;
	Fri, 26 Jan 2024 08:52:13 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTHwY-00000003V6G-3cne
	for linux-phy@lists.infradead.org;
	Fri, 26 Jan 2024 08:52:12 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dc35fd0df02so246008276.0
        for <linux-phy@lists.infradead.org>; Fri, 26 Jan 2024 00:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706259127; x=1706863927; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S81DTGo0RxOmNoDRhjegpnnjf7jQff8tYCdklC47ijY=;
        b=wbxNKpUmI5+YH8aUYC6iPNGTrMg3wBZ4ewh5lIaBom/xt1rklpufBITjFUJcH7NkkE
         7L+4KEIzbCeiB0dcEuYEqFdRSm/oNzkMs99IMAuhFNv8wp4CJYm8E6b/xZyLAe71/a3c
         slTuCefsjNBZt6gAVqjqKBjsYMo72F1wBMLPQEOEvmuMe0HIU/fNq9rpAeOQCVX5SlVE
         eD1I/6xRA6ETTF6u2m8BMv25UXBAXoXLLdnveZqu0wC+dP4cKO9JTUC+fPIPaxGSEwdv
         roXyeILfKbXZqZeFSuvA4vqyZXiU30M2QTCatQcVCE82qMRh2bi+F9Fthyv9XSy41y2d
         m5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706259127; x=1706863927;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S81DTGo0RxOmNoDRhjegpnnjf7jQff8tYCdklC47ijY=;
        b=toJXt7MHmZAb0vRF7NLcrmmq9yt8p/iLjkwE/G4t5QLvmFj4US505onjhDysJRb96K
         s1f18NhPhQuCbBzaZIaBsyK0BK7mcJc8suz7+9loITV84fQkJFjvw5+N5h+cBOY0neqy
         BsQWBsi+NMzB0rk8eoyCLWghTHkMSERXccTIlZyZkyDulkIBH4ehhWLoTsr3qRCJQcbs
         ZgqwyTE98WLaqAjRnmr1XF4Jyf/zIIOYnyLcEanF2TEa0doVQyj82W3muU3rQsyzf4ev
         9B5ip15fMA9Uqt/F/BMG7Slsc1qe8ewl1w1xo45f3QRw+diAXb/gFDREg4fa016nrUSK
         15gg==
X-Gm-Message-State: AOJu0YzNqUdW5kYMVvVbpoa3mjoevoAAIYuY9v1CNLLbLrWRqPsWLDz+
	yUHG0jdc/jcCYWRX2WfuRyZasoWbbVSTce7OIcFsj6825+o35IerHRoVKjZKDq0GGO84zDbvyWq
	CVlnVxsGUNnHkzCYcMCS+TvVV0DyhBfKN0DtKfg==
X-Google-Smtp-Source: AGHT+IEDhwUqA0ezn+xg6AQkgkKJlqIKM2kSQJnzsF6FONphx1zejBQuxcLC/vvkE+BOten67lfCsyIzie0IT51qYE0=
X-Received: by 2002:a5b:68b:0:b0:dc2:23f7:665f with SMTP id
 j11-20020a5b068b000000b00dc223f7665fmr894722ybq.127.1706259127403; Fri, 26
 Jan 2024 00:52:07 -0800 (PST)
MIME-Version: 1.0
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org>
 <20240126-phy-qmp-merge-common-v2-7-a463d0b57836@linaro.org> <CACMJSeuOmz2DC0m98k9MFx71A-9jyZkrWQMGt8DVUrqKJk-bsw@mail.gmail.com>
In-Reply-To: <CACMJSeuOmz2DC0m98k9MFx71A-9jyZkrWQMGt8DVUrqKJk-bsw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 10:51:56 +0200
Message-ID: <CAA8EJppz+-GSSKuwQi9uTknPLka1N-8=bOdTqu20cPsmxQPn7w@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] phy: qcom: sgmii-eth: use existing register definitions
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_005210_937730_915C6DBE 
X-CRM114-Status: GOOD (  10.14  )
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

On Fri, 26 Jan 2024 at 10:10, Bartosz Golaszewski
<bartosz.golaszewski@linaro.org> wrote:
>
> On Fri, 26 Jan 2024 at 00:23, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > The Qualcomm SGMII SerDes PHY is a QMP PHY. As such, it uses standard
> > registers for QSERDES COM/RX/TX regions. Use register defines from the
> > existing headers.
> >
> > Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> I have reviewed v1 of this patch already.

Hmm, for some reason b4 trailers didn't pick it up. Or maybe I forgot
to use it, that's also possible.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # sa8775p-ride

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
