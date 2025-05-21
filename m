Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8880BC54ED1
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 13:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xlq3kGhGoIjjh0fAYtsryhD6yA/rKsLx/heExv+R2vs=; b=ItJDzy/L3tfmIE
	pOI04LwQI0Sg31JgHHzLRqo2hhiQMOlO0IL4bsnk4Bac4h3SBnmejMefrEaI+hsvDRcsccoS6rdoM
	f/5P5bxl0ax07cHhFg/yHJSGI96nUA/AHP1RvouL4NUNBs2alYXwEOJ/jwi3AUgKJOImKjynyZ7cQ
	JJaHiV5y867pvTfmwaVRRfq1gLgEBlqF1QAdQkDsGptJ4DIHgWf8Iult6JSEC/fQeqO7kaYlrBY1G
	48S9I4Puk6ffdqYLsTQtk1pyIiTYqCEHIi9GIkGOscBRyn1GD9aTW617ZIQQff6VX1ZUbMAAQ848s
	PsSexXv+ix5MGd8EdWqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmy-0000000FzHQ-17ku;
	Wed, 21 May 2025 13:47:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjDa-0000000FtFM-31pu
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:10:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XIJF000731
	for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 13:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3Ny/4RwhOxpOmW4rwp1crSoL
	yoLz1hawgITXEILYp1I=; b=CYAarRUY8eShDDQQXm6E0pYbgAweu46zPiHfIjrr
	usOr/DM0N7EwsWUIg+Iymx3dX0gXNBrol+ymBwYrGpiLPnIVx0hA+R4Jl5iDLrp4
	Bx/c1KspxwplPilU/4XCnFD90aACtX+6zm9BJyYAy/enjoj3EYHAZZYaaiaIYrDU
	qPjrxd0/MnV+XBdeTP17ZvgNtPfIMhdCWb9d1BQ6d1RGi/XKlnxopDNUZm54ck6t
	vjlIcVswgbpWbheZGedHegPoHyVyx/JsBYWOijQMmz6uuFJEHccmvUeX/Q5IS9ce
	F/si2F38Uj9qtChmHpPlXOLWxjMk7WIVwro/6NYo4/G5kA==
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95thcmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 13:10:45 +0000 (GMT)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-3db815af5d8so95770645ab.1
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747833044; x=1748437844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ny/4RwhOxpOmW4rwp1crSoLyoLz1hawgITXEILYp1I=;
        b=qhIl+0rNqhundhPWBPPz3c5l0Mwbc/PnMuuNpZoFT/EBZ/LA+8fcww31B6kgy/Hel5
         tkHuwtdMFvtrFQo/OrnlRVshEzJAyuuSpJVv6gDKWrD0DRrfOBJHPpFtBVwsxRt9Sq3i
         MzIFdBQvFmsoqEAHWsZVdb9Br5YYugX552o6hFsAOm5whG/RKuSAS759C9Sd+c9KYTxR
         SeVmEUXuwr3WtTLX/h5dFiyp179M7FfjtQ/sQKJ9NYuRZpefG5GLSEV9DRzFcckhMdTo
         Onj/sQOyfhJmrAz5RY57jb4PTZrzkLSjosubvr2spahAtGAKMh7kubUDyEDvziR/cQ+w
         vg+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUxuj83cYBiWpbueSz7J0hCS8pW1rK/W5BuY9SL64b0+Y4lhBvt+t+qLHlVQxVzik2nvVYIWnwIRlY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj9Yy5w/7qv4bt7+LmkqVqHi7hWrwVzITyQjB/+3in/U2OSLUG
	/VcNzHw0Fz4j3YCCAT0cQDiXNjPsQlaq3xeYN3PC7G7lJa/6f+Kg6jcL0VyTxyFdk4qhC4lAR7z
	93ismhNo5S+1sc+7Bhf/ydWFHc67rZWRy6N9quOIxiP8C5P+s/rgaout+BXng4cegHoKO
X-Gm-Gg: ASbGnctGPIc0vGb2kNMR9Q4zyCJmzwQ/AdQuysxrS+P+Gtc08yS7qH49kZZEJJ9YZfS
	ADGaM6KUoRqKMgwnm19Cx5Nd9VIX3BsiF194Eaf3D5/ABtsFGRehB2wdNeu8qJtaT8j+7AUrsHC
	xOOXzlSVovSlZOWIsW6FY7DdeU2UZXDdVYKzKqFV5GG0+K6wNRIo2uZ/V+PcusXTh1HqLsQTOT2
	e1Fi0NBEh5K3ESaZ2w7wiLyN6WhzMqkPlDuoKkvE0Sxlpmwo7ZqoFFVm4OACeymhFUQ/VKYRtxR
	WwGxUc+Pi1u143Mw8+Vsn4qG0u7PS/Ty1y9lTBHichAnLPABLqpTjdGPE+lGo5DBy+zdnhekBt8
	=
X-Received: by 2002:a05:6e02:5e07:b0:3dc:757b:3fb2 with SMTP id e9e14a558f8ab-3dc757b446fmr75183555ab.7.1747833044323;
        Wed, 21 May 2025 06:10:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKoNhtb+5owKr4FzQyiElr9BMC7t8S+TkjVWacZxR6aDGOYdAfaPB2hP5Fm4Afpv3YSeiSkw==
X-Received: by 2002:a05:6e02:5e07:b0:3dc:757b:3fb2 with SMTP id e9e14a558f8ab-3dc757b446fmr75183255ab.7.1747833043939;
        Wed, 21 May 2025 06:10:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e7017e79sm2826647e87.154.2025.05.21.06.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:10:43 -0700 (PDT)
Date: Wed, 21 May 2025 16:10:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@hansenpartnership.com, bvanassche@acm.org,
        andersson@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 00/11] Refactor ufs phy powerup sequence
Message-ID: <ni7kedpcz7vchztb5qrs5msdt37mfdoabtt4gdqsaiwmbxlb2a@im4wurr77z43>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <yq1msb6lowo.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1msb6lowo.fsf@ca-mkp.ca.oracle.com>
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=682dd0d5 cx=c_pps
 a=vy3nvQW9C2dqy/lMnN3IYg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=66i0CxVaxzDmHRmSCfsA:9 a=CjuIK1q_8ugA:10
 a=mHQ74H5e8mo-RpSg_uaF:22
X-Proofpoint-ORIG-GUID: a3BpqckcLG7mQIUDCm5QG0GfBpjOHwb3
X-Proofpoint-GUID: a3BpqckcLG7mQIUDCm5QG0GfBpjOHwb3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDEyNyBTYWx0ZWRfX8R6n2oEZoW/v
 P/0xQhnvI8pgpK06ZmcaLdXbAfvTzWDmcWmToPSIs7gyjkSwdRffQipiHLJA3JmzRy8FirNAPf/
 pxD05VLvsnmL5hNZYxZwuJgK8/WR+CMnF2v526SxSkZrth3zZovg2g5ScfbwjhiBPVmARtREFJq
 LfEVLA2FusZjOJHGyx4Gezp6LRN+EpC46uNd6BdnDk2ccWGCPLRf82vIpo7pygD1O/eO0SC0nkR
 +avnluXuQU39z3ce2s2Vz/wKDkPIZoE56E1A1PtglMVZuuLXbvNuSvG6KWACJXEVDcDEbqzLqiC
 u2PBCnKoIaIMIk8nmvxu+GhvCxIiMCKvbpZTBfajOGJK2XwlA+zKnLBZFSWLgylz4b/6vgtyO5X
 ojTYCKsKPBtvw/qLNE4hKcpeeZ/EMPk8AKb1yxgYcEqQUjVVMxbwbRu1wreUTyPU0LcNzYc6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_04,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=895 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_061046_875212_D6954370 
X-CRM114-Status: GOOD (  11.87  )
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

On Tue, May 20, 2025 at 09:45:40PM -0400, Martin K. Petersen wrote:
> 
> Hi Nitin!
> 
> > Nitin Rawat (11):
> >   scsi: ufs: qcom: add a new phy calibrate API call
> >   phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
> >   phy: qcom-qmp-ufs: Refactor phy_power_on and phy_calibrate callbacks
> >   phy: qcom-qmp-ufs: Refactor UFS PHY reset
> >   phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
> >   phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
> >   phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline qmp_ufs_com_exit()
> >   phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
> >   scsi: ufs: qcom : Refactor phy_power_on/off calls
> >   scsi: ufs: qcom : Introduce phy_power_on/off wrapper function
> >   scsi: ufs: qcom: Prevent calling phy_exit before phy_init
> 
> What is your intent wrt. getting this series merged? Can the phy: and
> scsi: patches be merged independently?

Unfortunately PHY patches depend on the first scsi patch.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
