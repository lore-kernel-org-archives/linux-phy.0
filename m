Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6661D6DDD7
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 06:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkwk3cRBc587TPR8sckd1mILVU6InQJ81ylgbbOncJM=; b=A1JtF9WdY1MOwJ
	AX6fGyBYpmApJmt7F81+ipjn8FxktckxM3uSmde7c2VmHPsdCiaSZ8/Z1f7tfZ0zfllUEtgri1sLm
	pgy6JtXvIDFKRp0wOpFQYRpIQwp8yGQwbscXhEvmSw0IMRMZfNK8mLMdmNUT5Y/9VAXzpip1nxQnm
	czo9tOqsZcorfO5/cL3f/zen8D8sBsHSQs/zz9WuLiBVKgZvMiXig/RSgycH9+ffms+qJMqrih/kB
	3vL1+SLZtIWRfQ4AuLtZ1wX1iFijHAzHSFvvxMME+LL/idTU6CGRx+qfr5eKkJqSbAMJVPOM1RGvK
	0zDoK/3tC8thoAhv7CZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBpnH-00000001mpA-2Qxa;
	Fri, 15 Nov 2024 06:26:59 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBpnE-00000001mod-3clI
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 06:26:58 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-53a097aa3daso1430981e87.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 22:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731652015; x=1732256815; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1J8YPPScFRM8avVFTNWdv56IQPE49tvtNbMytzKJF2c=;
        b=MAA2YiIat093xclIY4IdR2MZiDqX3QC2JT8LY97MwgfFe/vmIcclXGRWZPLKACNzdD
         Czf+hLXrcwsZQMIxtvuCIGZs3EenUaRdCrXh3AxIku9zT8LAQyC6C+lgmMvhKQB5vqV/
         3n6jSixWI+uTqgRL0DmBBQe/oehJzDTJwiTygNYiOShl+Hzm459IdTwB2kgoYH3Wb747
         u3xtMIBwChVGNFR1JGMD00/DeMTUq7vatKEFcLlPppBnu5JWNhPzf3gXghDDS2MkL9Et
         aJcRDwSQN15yTOY7MSoOm4baoQXrOgGn7B2ymZN59W5IwvtpXV7fRx5jxax0D5AZk9Rx
         dYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731652015; x=1732256815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1J8YPPScFRM8avVFTNWdv56IQPE49tvtNbMytzKJF2c=;
        b=faPPg42cqol3Sayx4uzECMSNVWJ8iBMbm/fDDU256WPYcxggKrH5TltfBjhQbzZNI/
         5B0Yj+g/9Hr3MRi+NItqlJIrmBwdXoQCq1vA/8N/pR7lvu6hlk9YKbEd0QTw425siwEP
         FFJIt/xeNAoUqyelLqMopRVNgowyxIMOqn+ILrAUCRRyi2YNArdySukpsYS1Okr3R9wD
         +RSUfj0tO1OBAVXTZJvaWvcQ+qIGse2sgE/TIr44VKcEqHJSr+SyI+ptHE0H+O4XI7zd
         6KMIFGimToxczGgBHsBDWDsGHXkkfZxbLflh7QxVueUehGHS4X7H1v71FGIDqnTtKiqt
         HG2A==
X-Forwarded-Encrypted: i=1; AJvYcCUUVWaiQ53Z+hmv8yp+X+/+ZZOQ+xsFNMrb45KOesx/IEb/EkvPT+PREZn97xsoSi0q1xNRgJaD+W4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiKu9OR9/qS3tDHzT4AdSRhDj5XNxnqswWhdZbemxMFmWC29/G
	PYrWluGoJkG8z626nzMHDEhjuEoEO4pNK9h8QmOSEFu5ijtNIcNIlvMwzr3pIeE=
X-Google-Smtp-Source: AGHT+IHeRfCBqcZLNmnFoEG/mQnBqtDw3vKMNqwmSRjKMnCBShl3S5C72FWKECfFbwGJqH/kTo07sA==
X-Received: by 2002:a05:6512:b96:b0:53d:a6d1:b72a with SMTP id 2adb3069b0e04-53dab29abdfmr500983e87.15.1731652014545;
        Thu, 14 Nov 2024 22:26:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6548e9bsm445045e87.262.2024.11.14.22.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:26:54 -0800 (PST)
Date: Fri, 15 Nov 2024 08:26:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingwei Zhang <quic_tingweiz@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org, 
	quic_qianyu@quicinc.com, conor+dt@kernel.org, neil.armstrong@linaro.org, 
	andersson@kernel.org, konradybcio@kernel.org, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_aiquny@quicinc.com, 
	kernel@quicinc.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcs8300: enable pcie0 for QCS8300
Message-ID: <cp2g6j43zlx2njou5qz5tmwsnnzahqtk2hsxkj2ftrzbcmy742@ysca5ica4mvr>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-5-quic_ziyuzhan@quicinc.com>
 <rg4isufmnhnbsiljm34rfdsn46gfpatbsiscynaqtsnykbhnm3@ovcaulkfj4nk>
 <26943ea3-109c-473d-818b-2a08dba859ab@oss.qualcomm.com>
 <288be342-952b-4210-afe7-6e194dfd54a9@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <288be342-952b-4210-afe7-6e194dfd54a9@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_222656_911181_EA9778F7 
X-CRM114-Status: GOOD (  22.68  )
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

On Fri, Nov 15, 2024 at 12:59:12PM +0800, Tingwei Zhang wrote:
> On 11/14/2024 9:03 PM, Konrad Dybcio wrote:
> > On 14.11.2024 1:10 PM, Dmitry Baryshkov wrote:
> > > On Thu, Nov 14, 2024 at 05:54:08PM +0800, Ziyue Zhang wrote:
> > > > Add configurations in devicetree for PCIe0, including registers, clocks,
> > > > interrupts and phy setting sequence.
> > > > 
> > > > Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  44 +++++-
> > > >   arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 176 ++++++++++++++++++++++
> > > >   2 files changed, 219 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > index 7eed19a694c3..9d7c8555ed38 100644
> > > > --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> > > > @@ -213,7 +213,7 @@ vreg_l9c: ldo9 {
> > > >   &gcc {
> > > 
> > > The patch doesn't seem to update the gcc node in qcs8300.dtsi. Is there
> > > any reason to have the clocks property in the board data file?
> > 
> > Definitely not. Ziyue, please move that change to the soc dtsi
> 
> Gcc node is updated in board device tree due to sleep_clk is defined in
> board device tree. Sleep_clk is from PMIC instead SoC so we were requested
> to move sleep_clk to board device tree in previous review [1].

Note, the review doesn't talk about sleep_clk at all. The recent
examples (sm8650, x1e80100, sa8775p) still pull the clocks into the SoC
dtsi, but without the freq.

> 
> [1]https://lore.kernel.org/all/10914199-1e86-4a2e-aec8-2a48cc49ef14@kernel.org/
> > 
> > Konrad
> 
> 
> -- 
> Thanks,
> Tingwei
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
