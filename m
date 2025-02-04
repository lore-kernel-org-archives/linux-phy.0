Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8939FC02192
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 01:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QtPh0XNjQjmTYtI22qYT6zUqNCvmfD8QXNu/2XR+zM=; b=4ntNSrFHBzv4vz
	FLvkaK6b7K+30nT2Noq/63+uOk3XKD5dclyy0gi4/qpDDNSeGVZIngyxXYj+WkBHc1Wvqr1i+wMvG
	ccKBnlPce/AZAim9BDoq8aNbRw9G2DjFsuBizHbYIBDp8/b7UcmUZbJLUPU48P1wygopJfjpcFdZM
	imTIhbl5QdmGRL5ZfUvsufjifKVFODqSKo6rNslNzFDepnLtYmRyo1YMAspuMZIIEexaErbj3EfPr
	5pNURVinuWr/Txxt8w5isyjOMjkd85u0/oJjL+9aw2C9oEQVqVE2pfPDpAjKORn5ZhJtz2KHJ2go5
	l55aZ050K+qfVKXhH0qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf7s2-0000000H4sl-44Oh;
	Tue, 04 Feb 2025 01:36:58 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf7s0-0000000H4sR-0duA
	for linux-phy@lists.infradead.org;
	Tue, 04 Feb 2025 01:36:57 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-6f6c90b51c3so29978877b3.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 17:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738633014; x=1739237814; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ROq+7dop8/gAZioS6LiNRBVOkjkfWTu5NLRN5pWfuk0=;
        b=JezjB5wU55LsSQ6qLogqVLBGiH6VzDDAVfVVqSy5N5+CHxh27Dd3662XrmVMq1A40m
         R2d6R8rn6p5JFJfdQJMRGu0GoK6OG74VVclRn00ybZ+0Ax8PzDwRamozBU6O5qKvCWVj
         jYQRm3Oxaq++Fm3crAB+wa7AnSC/IkVg8hk3z1fjcfSCdfVWoEJ5uJnwgPOcEmVa7lU2
         RAufyCr6R8godRlXmly76Fwbd9ab2OXtzs0ZaSTuhdXu87f/o2Xune4YUnefHm8ql6cy
         HJJRRAvHEqFAALl3QQbconJJ7O1f6z7feA1ziXW67ljkItbb+ZFDxXHawG9IZ/bbSfS4
         2wEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738633014; x=1739237814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ROq+7dop8/gAZioS6LiNRBVOkjkfWTu5NLRN5pWfuk0=;
        b=ipZu97a8rW145HUiIceasmcUolRIvs64+LRdKR0V17nwaIqDqs6eY5kPVDlGCUP7yB
         Kxu/8y1/MPK40J0eXmnHy55xUREOMPifwoamAawG5IN/lCRdLgh9Qldm/E4fJmGPVA+o
         hLsYqxt82JLzujRnEvviEp3jU7F4GWJhiLeK5JQtr567pxAXbY5aoWmRI30oF2IXHiEc
         /hAT2TvQZwUZiNbCdxrypYEs/sxkRB/BXxcLGXbHCj27eCdgjk/TV6HwShhWvh78qzkq
         r7/EQiCrisbVBOILsUqL7RU6n61ixsybiyPp8CqsSRVxr67NfeLmfB7NBYs6dMlwfjbM
         ElJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzLBJilxDmIR6FC8+3Fm1u23/r/qT1Wyg+uJswKjca4PpsFk3vqKIRlSR9IMxaeRuMK3et1AvKf9c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9pCEiJHWWiZiezOEHd0Yl+kEXGCr8Lfv6nTHhH3jfOa/qeLhO
	d+NjIEkKOX33n/3m1lIVdQRzE03sl4DBtFM46Udpdi47KfsGBlM5tTHi72hYcYIjmGQGGs+3Nnc
	ytkHfG+FVDoBH5DenU/zCR3foYfs+6FJmU7lt2Q==
X-Gm-Gg: ASbGnctq7+sUtk/IQCwTeG3KIhTbrKuCCNnmhE0+b4F7edR3w3jKm4Sov52VAWYPqkl
	43DEWydJ2YfWLvm128ZE/OT7eM6lxm5QEYiw5ys0MTQhYREM88xoq1aUMmM8hkN4ofbU7rL3Nuv
	4Iwqeo3FRHZ+b8ikZW++jBC/GC7row
X-Google-Smtp-Source: AGHT+IEndGqJLe3lRomYw81FxRc4rJi4daHHHTKmvJkj4axffR2/iXurAfxujNYq1cogoGYH72n70X+vXXmF4hJGdBY=
X-Received: by 2002:a05:690c:c99:b0:6f6:7ef2:fe74 with SMTP id
 00721157ae682-6f7a8426a5dmr180536937b3.32.1738633014293; Mon, 03 Feb 2025
 17:36:54 -0800 (PST)
MIME-Version: 1.0
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
 <vry7yib4jtvyc5baruetqb2msy4j4ityv2s6z5smrz6rqjfb5l@xoharscfhz5n> <6873e397-dbc0-4c30-8c08-a65ee7cd6e01@quicinc.com>
In-Reply-To: <6873e397-dbc0-4c30-8c08-a65ee7cd6e01@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 4 Feb 2025 03:36:42 +0200
X-Gm-Features: AWEUYZlF9xRy7fPmY8vHPfUe0fIEvkxweH_j9r0Xv-PAz5SBxJgUbog5Km9Pvw4
Message-ID: <CAA8EJprjxMtkefY+90cLGVgz-bDf=VXnaa0eH4ESAC6nf5vrLA@mail.gmail.com>
Subject: Re: [PATCH 2/5] phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, Manish Pandey <quic_mapa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_173656_199657_A6BCEF5B 
X-CRM114-Status: UNSURE (   7.76  )
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

Hello,

On Mon, 3 Feb 2025 at 10:03, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:

Your email client has corrupted all quotation levels. Please fix its
configuration so that you can not compose HTML email. Or switch to a
normal text-based email client like Mutt or Gnus.

No additional comments can be provided to this email.

>
>
> On 1/14/2025 4:19 PM, Dmitry Baryshkov wrote:
>
> On Mon, Jan 13, 2025 at 01:46:25PM -0800, Melody Olvera wrote:
>
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>
> Add SM8750 specific register layout and table configs. The serdes
> TX RX register offset has changed for SM8750 and hence keep UFS
> specific serdes offsets in a dedicated header file.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
