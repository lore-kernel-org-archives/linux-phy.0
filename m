Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07681061B1A
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 18:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyvnAhXsqEs4VI7lt9XAFfs9osvumFyujGb/XJac6j4=; b=b49h/5aizqXtHD
	/4OAmxb+0AsVmtYpEqiyb7AAWpRz1f3VI86jHDHrRR92ogw76Hh2UWSrKh+GzUQlIqx/8xNMcimKY
	4ljms2ERQUyRV8vbRYfMdMnkW5RkAx7mCVgUcaIEFOd0LVs/Ch/0mUyXpis5YeVBXV/m6W0hL/TDl
	mEYAgPy3QjrkMmeEPOORywVHozWOt9u6tdE2wzVW7m6tcQdPE/znJgWBuqnI+0xdvdUz1OaZAwbJ9
	uq/GUhTxNoC2J4MAjro78lF/d2fn/33+sGjyFLfU4RfkZASQlyIIPrltkSY+9nAJaGY5NQt79sRss
	XwYKkCQJoiTVZ4roydHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7HZK-0000000Bjp0-3CYW;
	Mon, 30 Mar 2026 18:42:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7HZH-0000000Bjoe-3lSF
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 18:42:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62UExkGe2391342
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 18:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tmSly2krkyEPd3C1QckzdIz2
	IUKLQUpW62wr+IkZxLo=; b=Lg4mFrYVXlfkHbSHjzYG742sLp8Hw8PbBuqXveTw
	o7U+tcLPv3gt3ouVf0nNtzUc+oQB2a0tDB/7h8AIW9t7DUCmi6mVGSYfMRtNTQBM
	rlbXmLr1nN5nMQFlGGnG1LoeJBut5sP41sHthsDK6u9ugV6QfjmhQ6mJtmR2Dm1h
	fGQV66ppZo8A4qNnaxbBHuvA3IF/IeJmiL/I+OhmESb5H9BbUFPGXGHJmme1TQbg
	iUqA2IW8fY8zQawH9rh5/SKWVVbCcoOM26JOdG7Jzb/g1H0Ul3ZGUSt1bn2O1FWZ
	5wv92hzXy9B8Y2T+uuw2V0bTSuVdks569KQI67RrlBxbbw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d7ue7gw7g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 18:42:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50b52a2d70cso143835761cf.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774896149; x=1775500949; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tmSly2krkyEPd3C1QckzdIz2IUKLQUpW62wr+IkZxLo=;
        b=SzDVlkOwDBcPhJswkSqYc4vZO+lLaVw4asrTO09QZiO0Nc1tWGDR5Jrg5eCEn38d8i
         ogPGW8hTYqq2Wb2C3+dg2QCBhD3W3CtPesxPTWuVrm8pipCU5rnJTo/6BsoBX0WdLPZJ
         FMw8omHHCygZbQsA/5HrQAU7z7GkeOrEIWv9rbATBSigFKy2hGcItPTIEmbiIiw4W4nt
         Q//TXEJ4AEVGAoZ9KTADV5UgyztXYhGIRUEZ0XlbxI2wvUX73EHd8M4Ouw4czi7tw3wJ
         53aikMckGbXOfKb7vKbUnlGTk+g5omNST2djcPBDmtDQJquC+BbTrfQHjlxTyZ6+u7mj
         TeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774896149; x=1775500949;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tmSly2krkyEPd3C1QckzdIz2IUKLQUpW62wr+IkZxLo=;
        b=VIDecHVKEmuEASaaz+5RAkNeaZ+YwNriP6pqiBc7r+9RZvhU7dT9B2BRRhFLqRu8Ch
         ObKfOi9LvnUU5pcLjVI8CDoWw1CxVLA6VuPvggzXJuxO1mzL0HMDIC62UtJXudKEjZRx
         STVs/5bu1d1MQvH7XCpTXq0Yd3wK8X/wV2c/9odB/rP9FiwxJ6ZlcPKUeXKEsL/8t9aa
         RsfeUpK3APtIYa6OEbusC4T6LJDQMhGZ1OQiI93geEzZzANNz3zY0yveUwIYrk7wtxnK
         nflxSbDW8BlGeyBdAqc0GKYfQY5bXRjF0M+Y/aRLtJ7mOEt/LyPDAbdkIZ/pAp7iJfR2
         mKIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL0vm2Mi72+nvHdjpfzhtxauX9rwG1l96QaTqxVZyyuyv+tb8lpqq7Fc3ahVI+KDlLy5zTa9xk/lM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh6fGRB0bDoQFO0SewfyKaU8mhq0+IF4X3eV48Dg90mzGGtbp/
	CvZhN9w5SqvkjtwE/clrzcDcWuEyuZu+dPkF3EJZDXFz+4yPbxlsHBzmd34DLKQ3l7VBmAKBrKV
	XpFNBIRimBro/ogSqb1yGUTt4rnugNAkpyPMK2gDOt6mneKg54aJ+NnUaMH0fYpt+nvlW
X-Gm-Gg: ATEYQzyNp3XFUyDTsJCO+zMji5yxi7hziNZfz9H3hD5XWhBfzEdLfxnEMqoJut6ec89
	oXQZYmuhOaL+mwEcUrmmIAoSvz3fAVwmWh7CMbx4Ggd77khFTquqriSRH9LXK5abs51WRx2EL+6
	ki65B2V4ROFcotVKumhL6PHfyc9hvlxNHEa5iPYEq6MBVL4puB2f9K9kMO9nYH89/PrLm9jq50w
	w56hcW1AB8QvCZZS1Ybn977Zy3yXPdW3aAc54yXwAOXTpRnRfCUs6Tp4EnjweruvIKplKD88vV3
	jR7YLMJFddg43r0xEdf8dHQKF/+uoOCBifROCl1pZt0sNoVWqcwDrZqNtL9cwYbrnGAX7rSyQlu
	pmDxUMruJ89Y8J/nSv3Xd3fhBHiWiHisVPDBeyLsCmGBr3c1tH7MHRFutg0cQj7A/A7qqFIMvuf
	UNgRSIJV74ssvCOkO/ftKapsYottLlFeBXLEU=
X-Received: by 2002:ac8:5914:0:b0:509:172f:bd5 with SMTP id d75a77b69052e-50ba380a2bamr194038041cf.4.1774896148923;
        Mon, 30 Mar 2026 11:42:28 -0700 (PDT)
X-Received: by 2002:ac8:5914:0:b0:509:172f:bd5 with SMTP id d75a77b69052e-50ba380a2bamr194037551cf.4.1774896148325;
        Mon, 30 Mar 2026 11:42:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2b13f435bsm1815809e87.9.2026.03.30.11.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 11:42:27 -0700 (PDT)
Date: Mon, 30 Mar 2026 21:42:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, konradybcio@kernel.org,
        mani@kernel.org, James.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom-edp: Add reference clock
 for sa8775p eDP PHY
Message-ID: <yex4vskdbtvodzkkxbs6yxkeiz5bb3x32f5nx5qklf6oyexroq@zspg26phklt2>
References: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
 <20260128114853.2543416-2-quic_riteshk@quicinc.com>
 <gurq34svc5p52bqx5qwkgjmschzcbklmssjzmu2tg5wzgppkft@c6nrw2ageyp2>
 <c77ff64f-57d1-4495-bfbd-986644aad71d@quicinc.com>
 <acqGFwaVFQ3ZNmlR@baldur>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acqGFwaVFQ3ZNmlR@baldur>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDE1NSBTYWx0ZWRfXyBmflshyMTy/
 aIFLH30qE85Tcq1nn027+5fufzwKYhL80i397j62rVfPy4M1gg2cL7CKIcld1EObADGpVEYkR9o
 Cp39ijeSFddJPL4WQAfMNwGxo5+9i3TeG/HECCbF55E0uMaz006npM9gBtjN/3iCc1KTzAz1iLh
 cjVfg2VigOp8CkGzTy66h6f+haknbolj4H7H1vkMwxF3MgH92Aa955lFhM3IE5W7DHtzZMxWuiU
 aKT6YsFZGcFLWDNNZfHYXMCuGbgeiq/RWRJAwaoGFTtOSGJVXZbwWzIGeOUPkEdNXTBg3oXwGi4
 V8t4LtszNFy4Y0AI/LpoRaGTauuavB37xtIAFUIHIxZPJn1szOGbw53IGOo0VEBtpiLpeIZmfwT
 NntlL0NblQXMHmJqbT+6Y3AT/wRAuo3A6hJOnoY+y6f1F0bMiL/gZGD4yLB7TmeuZDkuWLHVUvM
 7pgjCITC6DpM4BhIttA==
X-Proofpoint-GUID: 0pjpRFT936bBsvCyeCgpKhoY1aDRnroX
X-Authority-Analysis: v=2.4 cv=G7sR0tk5 c=1 sm=1 tr=0 ts=69cac416 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=Ns0KfnHm5iy1vUwMj8cA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 0pjpRFT936bBsvCyeCgpKhoY1aDRnroX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-30_01,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603300155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_114231_942902_4053FED3 
X-CRM114-Status: GOOD (  28.71  )
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

On Mon, Mar 30, 2026 at 09:28:40AM -0500, Bjorn Andersson wrote:
> On Wed, Mar 11, 2026 at 06:37:31PM +0530, Ritesh Kumar wrote:
> > 
> > On 3/5/2026 12:27 AM, Bjorn Andersson wrote:
> > > On Wed, Jan 28, 2026 at 05:18:49PM +0530, Ritesh Kumar wrote:
> > > > The initial sa8775p eDP PHY binding contribution missed adding support for
> > > > voting on the eDP reference clock. This went unnoticed because the UFS PHY
> > > > driver happened to enable the same clock.
> > > > > After commit 77d2fa54a945 ("scsi: ufs: qcom : Refactor
> > > phy_power_on/off
> > > > calls"), the eDP reference clock is no longer kept enabled, which results
> > > > in the following PHY power-on failure:
> > > > > phy phy-aec2a00.phy.10: phy poweron failed --> -110
> > > > > To fix this, explicit voting for the eDP reference clock is
> > > required.
> > > > This patch adds the eDP reference clock for sa8775p eDP PHY and updates
> > > > the corresponding example node.
> > > > > Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> > > 
> > > Is there any reason why you didn't follow up on this patch Ritesh?
> > > Looks like it's ready to be merged.
> > 
> > I was waiting for patch to merge as there is no pending comments.
> > 
> 
> It's been two months now, if you want your patches to be merged please
> show that - ask the maintainer for a status update, ask a colleague to
> send a reviewed-by...
> 
> Perhaps the maintainer lost track of your change?
> 
> Perhaps it's not clear that the change "need" an Ack from e.g. Dmitry
> and then it should be merged by Vinod? Because you're changing two
> different subsystems but leave it up to the maintainers to figure out
> how to deal with this...
> 
> 
> Either way, show that you want this to be merged, don't just wait until
> the situation resolves itself.

For merging through linux-phy:

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Vinod, please pick it up through your tree.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
