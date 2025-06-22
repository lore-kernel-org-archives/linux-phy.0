Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 737E9C7115D
	for <linux-phy@archiver.kernel.org>; Sun, 22 Jun 2025 19:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S70fLSU1iRhfBYOb/vuU4xmPPsaK6JYBlJdvvNLfRuk=; b=3apfmRbkpRQL2M
	WcsQ2edJWJWqM8S2w1MAj0+nKbgsKxVdGA8KetykMf7AmFgTO8mSfG2Rb0p06hEv6vGyzNdRv0b4a
	VhAidUzYbSCuQH9Sv0vN+NTdrqwa6zWfuZ3lGh9s8V/+OCvcrnMequTH1vrUhYcA+jjlnksu62onN
	yEHPEG+MBzoQHlSaShMq81XA71yP6jv6mnMXZvwQUgYPkW8ZSsfPTS3smxvJrxCw/5owpx5dC82IS
	LNWUQuNmxh0tf+xypGzjC5DhwyE/BBFjihNPN47CS2W76+7DObgUoyKx40NfIyjAfFvorDeRai7E2
	IzlhmHmc7SDkGBOEbDgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTQI6-000000018Hn-0TOf;
	Sun, 22 Jun 2025 19:23:46 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTQI3-000000018HR-2g0f
	for linux-phy@lists.infradead.org;
	Sun, 22 Jun 2025 19:23:44 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-adb2bd27c7bso524599666b.2
        for <linux-phy@lists.infradead.org>; Sun, 22 Jun 2025 12:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750620221; x=1751225021; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Br5VyEEaKP/ktAugIXCOxiXHE4k+9++aboaKBknJU3g=;
        b=hUQ9En/aQjvSAM+dN1Vz63cS6YAEPxNWrdQuygYnHy9g5uGhJxDvvBxEtOMirI1HfH
         xCiS3263tRUCRaxZyBv+7VQtb5EYsLWJ89KigSCknWeNHh1c2BlOrlInn6qk7/wtaSEa
         aycQ3vLLYf+We4dxBExznUyYzlACb9Jlb0DrSMqWVJDRVEsHNG/+op8cn6HDWMFNv/ah
         6rknasVbpaift1SZgRGXhHmHVcLmjj5LJbGuiH/sv29qUoR+rOWP9Ljf7Ihd450KfPnb
         lujkhrmPeLGKzE5j1ydBe475KthluBd0WsUmGuQt8DOQCyXNNrGGw2uf+CeUd05s4qid
         IjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750620221; x=1751225021;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Br5VyEEaKP/ktAugIXCOxiXHE4k+9++aboaKBknJU3g=;
        b=Ke53yyfvbxgM+ScD3uWFXH/oHOTHcUpL96nI1KxCJTQGLMIhX7V1mgfbIAMHP4+OsT
         fR5JbC4mKDDJBBVbAyioQNPzNKGoHPH0t8INlUM6vPrM8JGpZmKgOecIU4B5iXluub3d
         1Y27gPcskx1j96iJ0GUkUNkBFOlhUjGQw4nqE/0YDk/UgjeV1oISwMjQtj5R6enuDq1A
         D6WOhvipE+n4HbTQ4RkFbIBKEqtYAO0DuLAUBxubzDV+L9/jSNxcSeF/uvWrLK0oevaZ
         G5LCVcqXkNeZxjSdxv4UTJSCaYum6pJ2nuyah524JLx8txBSJp/EW5oQ7Qtj+Yl7fJwy
         U9Wg==
X-Forwarded-Encrypted: i=1; AJvYcCUwsHQ4BuDpRnrs2t/nNS5ErnDuIdlxZikbiOsTQ4pCxu7h3Nu4NEUB2kRO9WhgoY2ldCjotnsuFe0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAtXIMk0IsmQwq8/4Wtz/KhfgjII886RvB+HuylWjN9u6h70OZ
	5BmgIOkeJPGfg2Au5GEBJZycGGCUNtd3uMfd+rNLIjBx1vnACIhh0MjrvB7nCI7pcH0=
X-Gm-Gg: ASbGncsqxXqqQGWwMRJP5chgncnopucOQMaoTenSPgG8XuK0yCig83SEQbcFColTkmn
	aZIPVRO3G+QN1RgXXlpZOHKwy2dgZW6Xw6Olikty9y07+/Zq7BNIcPaLwhYYvCOxMw//VrL2STU
	EocFBkvCfr0r3548YQM+zmki9C/xnv2hOmPUHzRenJQ/xYd08UzeTyq6CdqASukDnT0vAqkXrQN
	KbghgqP+FE8NWvD1rWMSiMLEo+1ptTRGGFqRh86v/22ztSk5UIq16Qea+fuqCas4pgLMuCuozCN
	AL+jOjS9JmhZtZ2MVkkRjA3weQ2YN5l87Y2qHJbHQbE50sx5AIQcfNyNjQQ=
X-Google-Smtp-Source: AGHT+IE/CAE8fTyyaZhNwnHqQ6DluWGob1BPPepxXx61Kxfg9bpG3qc3aCqfgSMh1y8Qa1MPv/AJwg==
X-Received: by 2002:a17:907:3f1a:b0:ad8:8717:bf9c with SMTP id a640c23a62f3a-ae057ef753fmr1060205766b.32.1750620221305;
        Sun, 22 Jun 2025 12:23:41 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209a2dsm587665566b.174.2025.06.22.12.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 12:23:39 -0700 (PDT)
Date: Sun, 22 Jun 2025 22:23:36 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, manivannan.sadhasivam@linaro.org,
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
	bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
	konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
	quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH V6 01/10] scsi: ufs: qcom: Prevent calling phy_exit
 before phy_init
Message-ID: <aFhYOMPdCiCL2EV7@linaro.org>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
 <20250526153821.7918-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250526153821.7918-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_122343_702294_926F6D97 
X-CRM114-Status: UNSURE (   6.01  )
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

On 25-05-26 21:08:12, Nitin Rawat wrote:
> Prevent calling phy_exit before phy_init to avoid abnormal power
> count and the following warning during boot up.
> 
> [5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init
> 
> Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
