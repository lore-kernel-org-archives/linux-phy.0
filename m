Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95D1CCD18C
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 12:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLjaBqpXp8WWPqpNvjOlWtk77A3mvNipg7qfsRsQGHs=; b=wvwGbjPK1NyLOt
	0kySF+u36jgcWzYiY50eg5N+BLjN+Lv6ZRpn4VTuEZLY64C559nz+uKKY24BXrfnLiQuQ3uHGSADp
	qA7RLbBckJSrVr+sv2oxsbla5CupmTinKXujyS4URphz8Td9yBbh/rbUFTHUmj0yaIbQEWxwvAj1U
	L/J/Giho5b7mhO/08A7ktEn6KT/8An1bfrbDKjUGnx8eK7LESbp4OX6G6V8jQPfmIgIC0uYprN8Bt
	mn4PNulJsun9g+vi/tGD3q4EeCxsZvY5kNParTSlRNHb+KSalqQy7VI8JGqFpd71d0hGpZW7PbaLr
	wBHaSSHlh/+Rr/4xGv+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hl8-0000000D8U9-1f4l;
	Mon, 13 Oct 2025 12:34:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hl5-0000000D8T6-1qrB
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 12:34:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DASe7h029778
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:34:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0c/YLYaDMoEGnP2p+UDoLSwW
	bwVJnzjUv4KnwNKCfEY=; b=cHKE6Szt423RB8gknU+LDvdj0Cuw4qswyTZSaxAw
	3Vln1wH/aKoGO3yopYn8nbYnpcw2S5NHX7Sm79VwKwLYqcQLc+ZXI9mJfef7hziV
	AKyPZ2BlBcuN5v238ZNwTY7D5BQ55vFbmhOXJXLfe40w7C6yQPCZFlJkWD+9Scay
	ynngzBZIK4MUfj9Pj6V8NhLYw4l6QgLJ27bWbS19Ao6+8gDR/kWDmmWrjCyZLQJS
	Drz4A2m+5QZP+VC6nw07jEHuiMMqSvOsKt+L4sJGzjlqmM7rq0O7DHaJwuV9FO5I
	WjOXqD+QR0hcatHH0bdFdVzbAjOv4iTSBuOaVcQi0GtIuw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0mgk7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:34:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-883feb13e83so2674738085a.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 05:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358873; x=1760963673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0c/YLYaDMoEGnP2p+UDoLSwWbwVJnzjUv4KnwNKCfEY=;
        b=SVuKPPcQGH2nPNe7PLoWLBfFI+X7Pbb8kLrNQW+XYjN+4M+7cY6T5Z0xvCYhC8Lrt+
         spjUGzns9Ozjb0heRZe6tTkgTfzwk1S2RxNehpTjnX2vd1vK+4Lop2nOdqydIU5kG1XG
         6Tz0c/u+pjDQYMDcCgeCi4xe/jEOn+Tf4Dyi8CCO/T9pfoMjVXoKUT8i2CaiiKm5Mqvw
         uuCd+4hJ78ACBMmOGOL9ER4LEgKRqQmQdJ6Nae67xEGNGuvvrto5Zlh1lvponNtivoie
         qEj5s1BajJwv0x8jj/lN05kqHWfxGJrXgVvWf0Q6eG6G1YHs5Zg8iXcPV1YqnmCTbfPS
         Ip8w==
X-Forwarded-Encrypted: i=1; AJvYcCWjbf3maClCnu+6vGPuFAKR3LejaP3l8VJ37zqQOVtf7Vodd/d44UekXUrJT0yvKOubRMXzB8D7g5c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhixHTo5ruCMJo74T/MDkq0QQC0YdS2g2XGDBUXZc7K0kXHNLS
	2sgQxZV5ko/0Iztp06r3QDU31rGr9bWxjJhY+aK1OzzIOblVnxECUMi1IHglC8+C2DzVnaROKak
	3+n6/6Aki7smLklMGIoWxVeIZqwSQS1Vy3paRF5sHJfiqYIkdLNWU9rJftLe+19sUz3jB
X-Gm-Gg: ASbGncsbYW3OEmrCrc/7PghKLbu5x7qe8fKdQv+JklIRmKw/r/Re3mrHmqgoDwqIt7i
	n/X/Yh1lawkiDgnXWArY9D1uWBj9SjVMEizUwPqK4NGzooTkKDNjb06rWEv5jBh8pBcohS6KQOx
	68vNdhvJH75bGzvXNA/arP90jrXmeM0JMe4/KEZ0f7nSMfPTaQGBMEvMJlR/3u6uyXmn35qYGov
	19bI7lzN7tHyT8Qo3KJkVdYtW8Fp2aznMOAMayE49DMJG81veNNaowLfaE6/kTYQv3cboLHYy6o
	YArgr75t3EovqimLwhgD+DHNxZxxKZ1zJcDkHmIzgCjomCvbCQxV1R+o/HME1A68Rf7OA/MNKqr
	KMVc3/6vJIuuUetSX0cdy1wctpd+0n/JAvMog9BbbyDCSZJ9zNH4k
X-Received: by 2002:ac8:5d46:0:b0:4ce:9cdc:6f2f with SMTP id d75a77b69052e-4e72122afacmr71752621cf.13.1760358873402;
        Mon, 13 Oct 2025 05:34:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNbh12YwL4Iy4NRipEsFChMHtKqDe+smfm+D7B0YFilvKsxmQIYfhkB/7L1zjAmITtmN+oiA==
X-Received: by 2002:ac8:5d46:0:b0:4ce:9cdc:6f2f with SMTP id d75a77b69052e-4e72122afacmr71751921cf.13.1760358872891;
        Mon, 13 Oct 2025 05:34:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f862asm4116608e87.27.2025.10.13.05.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:34:32 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:34:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 0/3] Add edp reference clock for lemans
Message-ID: <7jmk3txdrnit6zn7ufra7davmomggd3graizdu6wqonp3lljza@mfnxt2owpknq>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-1-quic_riteshk@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX5DbNkwqDQqhD
 IbjiADDphYWV/uwEhjPQ2SAbFYj7HuAL4Nk5m3huGedahn7yMpDkriBKaBJeHjHprWOqrEDBf/u
 QSn40kZotS7WgEWcIQcDEL7/gBsin/rfCAXbjB+Lzza/yTnkVgTtkvjFOQWnPKZP5DX08WdaB3x
 aaIqTeAGbXt34iEZIuSTlJgWEeVGqosZjvP6OUEyvQ3Z3Gu8hVzdMW2lFFxgKKk754fNCVm/Ka/
 RVfDzjGWTotYn3/qJ/MVRyqX+YXGY+H0alyiGchMBbiaqD28dF5zkTwPxFkvN7Xov9guhPRfxmr
 aZVAG5xIiK5PJ2TjK5P7e7dU9EQqDT4PWRqzxXnlvo9csI8APFxXnbasnoyc2HM9hCylmLQBOw5
 yWRfFmY+8boYmK1SyBf2BTGijn2GjQ==
X-Proofpoint-GUID: pEx8WA1ZGv-9v37OFp3A_vkYIF1osWkJ
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ecf1da cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=sf-Njp88EExxdhEklOUA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: pEx8WA1ZGv-9v37OFp3A_vkYIF1osWkJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_053435_481660_76988216 
X-CRM114-Status: GOOD (  10.77  )
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

On Mon, Oct 13, 2025 at 04:18:03PM +0530, Ritesh Kumar wrote:
> On lemans chipset, edp reference clock is being voted by ufs mem phy
> (ufs_mem_phy: phy@1d87000). But after commit 77d2fa54a9457
> ("scsi: ufs: qcom : Refactor phy_power_on/off calls") edp reference
> clock is getting turned off, leading to below phy poweron failure on
> lemans edp phy.

How does UFS turn on eDP reference clock?


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
