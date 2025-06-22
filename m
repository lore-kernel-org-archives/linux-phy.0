Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE43FC7115D
	for <linux-phy@archiver.kernel.org>; Sun, 22 Jun 2025 19:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz3ObM3BUKDFwZn9J5FiyYDYQUJvM3aE6Lat5k6h5EQ=; b=PcvvTtOB8X+dx2
	GUC+Rv+dQszbH5Eu3EwbePKxm/r7XS8hzA540huoTiXyMn26P6scVi2cjIfFVf7djV0ZXODJ6lVbX
	FrftW74euZ8eLByBL2MX9EZxmELQ9IG7VrugmYBgL3yRxn09OqKNwnP5VVUciGX12aNWt6FfRjeG1
	CQBh5MEgA2MrNAON/5OVrx8NFcufWzFeEfTzby4IrTCQ9e8k6JJgwsPoC/geYShu6wfZTiZsTKwfS
	dJBNfdU2pNyrveUsZf8+UHa5FNxhMpuL6LoMbY6bYVqgVlvuZc3KwXEunQPTeEo9N6Rm3uasYfDQ5
	OEdSih5IEr4TXrCPnQ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTQId-000000018LM-1jMU;
	Sun, 22 Jun 2025 19:24:19 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTQIb-000000018Kn-2uYx
	for linux-phy@lists.infradead.org;
	Sun, 22 Jun 2025 19:24:18 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so6184511a12.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Jun 2025 12:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750620256; x=1751225056; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IbjF/h91o8sYLkOV/LaCb7h1OWB7p+JRyaYdcedZZEg=;
        b=tFn7GSW2kflkK0N263ow/vu/5yyEtiUTlC02SaK0orFX0V1LSiove6OZb40b3pnrUv
         TnFQxeIqAXiymAyUt4qL4TTyRm6MNvPfVEFelKrPUhisWdsafRrw76JxZUAqJtNDgqIu
         9xmkIYgNwr8OBJw/2ra637HBUX3bhUWlL16HkxkcjVClqfPR5jc9RiHyoxNs934ima+M
         ZWReMQO/7cUCDEWh2KzQ908nhgP6Wc2Ed7RsJPSVo+Ebg6+aa2zuhsqkDh/vlq6m/HF5
         W2vzM5Aa7Vkrnx40QVofi2sC+L9qbBc2ggzMNfCvR9544bPTuKoNdnkjs8N4mNqz09Qi
         J7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750620256; x=1751225056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IbjF/h91o8sYLkOV/LaCb7h1OWB7p+JRyaYdcedZZEg=;
        b=sY3NB7Jp30WIHLO1dTom89bcycYkhDkSJWJBfYSnnEEMuH0Fz88Q9pFCNafP4y0aKZ
         lDGUpNGBIwcXzveU5LiYvkTyEWGA9bqCp5I4SqLOSEagQGtdfd7pzm79FffvPqcCiQB8
         TMODD8T8K+aTdlt5u+i7yUDiQcj6tPXxxlRN4gi/1NRoC5TiGoVc+m7z3QUvtGRws4pg
         yOuYMeCATy6xktNaRJJf/YKFM9JdXUv7/AEK0zHv64IUj4/e2VcxZ7C7jpowWgFh/LhN
         17OmIbFVILyv/wapCJaPoamgcWlaaJKIqPymHO+Y5W5NRBEPqtiljtRSUOC9hrgDJoJ4
         QJAg==
X-Forwarded-Encrypted: i=1; AJvYcCXKT8uWEl5EPT0seLfcp7pYzKrQEH+jTvNeHRGOH5PJQAxQUi/2srDO+h8Mm52JgYgKiIuIHH/yKKc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEiGeD0EGhWVvklsQ9Yec2wO003P6aORN4ghVt+UwdT9C4L1uw
	Bhkhx/lxxtdGNRuRqjvYPtcIjGmYudWth+fyCmCC2djMRY1rNhX0k+mKkpoy7y1hZpg=
X-Gm-Gg: ASbGncvcVQ5Ar7oCwtX3uorS/5J/Z04Y6lWakaCU00qVZO60CD3P2AHgo+28ymhWbZv
	wolUMVb3H3yczXYYXJK3NNzXDd88k3fJL1rfKXaLb8LtUJmnPuYRsvR4ksjq2dZQccuU5sadXNS
	9oH9jQKpkv0jrI8ig91G5eSt9Ycf2EKFCIKDDKPS2BX0Nw1DADuvU+8fMwRCnO8UfQ3Q/qGB6E1
	F+F8NMczDP3+udr0ZDullVaOJl5yxO+22540FkZTWAw+UzuKLnQgZM/tTZ9EuY6E7PIbZ8JEeOo
	ycGvRFoTR06bW6U5AYnZfhvd8ijhm2uMDiBmflR38QAm83kh+dBXnhj9BnA=
X-Google-Smtp-Source: AGHT+IHnoYTbMPh1mNJsjdl28NGezTFEyAyfF+x9j3rQX5TVC51X/4ITVYOLyUMfiFovN1yLap6AKQ==
X-Received: by 2002:a17:906:9f8a:b0:adb:43d0:aedb with SMTP id a640c23a62f3a-ae057fa74c6mr937853066b.61.1750620256156;
        Sun, 22 Jun 2025 12:24:16 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053e8218bsm577845166b.4.2025.06.22.12.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 12:24:15 -0700 (PDT)
Date: Sun, 22 Jun 2025 22:24:13 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
	bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
	konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
	quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V6 02/10] scsi: ufs: qcom: add a new phy calibrate API
 call
Message-ID: <aFhYXfBMRMluXgdv@linaro.org>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
 <20250526153821.7918-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250526153821.7918-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_122417_731801_298D4AA4 
X-CRM114-Status: UNSURE (   6.72  )
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

On 25-05-26 21:08:13, Nitin Rawat wrote:
> Introduce a new phy calibrate API call in the UFS Qualcomm driver to
> separate phy calibration from phy power-on. This change is a precursor
> to the successive commits in this series, which requires these two
> operations to be distinct.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
