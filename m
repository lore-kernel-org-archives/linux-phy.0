Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 739C6C5B552
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 09:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LBKe+ylpNoMRPM8bJrkswizuSTB0W+g901/juIkP+8=; b=APp3RhTNxYtRpC
	vl/2dd9vR0xKB04AEnAnO1x5/RfEOELqPx5gCKvuiEUHHafENuaG0cq6T+0eSnKmLGzMxFVdffhac
	SEmzQVBa6VRcDqGPmwt4mkdYSRVmNrVL1TmNEB5qUDtHuwTT1FqOrYcd4HUZCQ1GXJzNCbM09qGK3
	sQ6E0Q+/utIyw0QZF+C9Hs4+Wzduzk7GNUVWo6BsewevWZBxbRT9RnqkLY7W7evWMHWFUw4JPGJyv
	DO9W42zftrzRAnzyDgni6t9tuYB7BvQnxLIXhOeoxeBAcHqLl2yzhvIkUoxgBt8O6GwDmsYWup7rC
	mfgiswRF4m+qMpAMJSFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkJY-0000000D1HG-0xEo;
	Wed, 04 Jun 2025 09:21:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkJV-0000000D1GM-3RgF
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 09:21:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5547vPNb029509
	for <linux-phy@lists.infradead.org>; Wed, 4 Jun 2025 09:21:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R+aLR+kiZ1KGuKrMttuGRYAV
	lykWWo5RCnMa4dfVWY0=; b=TS3dH206MqEG9+qEEwvj+nlq2yphj1svKGBNCcNU
	V5QqVwdA7Bs0eMwXb67r5swmHRRLbHFbZwdNmWxnHq7jvRLIPUv0173H4tikgNil
	cQZsq0sDS+yfCvmJU5j+B73XQiGlo7//F9VFBq3KOAxqUoUDcg2C+2wvNHgtWuC9
	/89vOfS/mJSRkzt3csbEwVussOwuUVPeIU36NL8vPs8PZWUCJOp9p697q7Ljkn8/
	jgt1GwqumbEsFJFqAMFwi0Humk9CKuifAJqHFOXcsWMUjzDLoATSTQVjmvQDWZCO
	JlHMRUjlepSX81A14oHXMAo83SyoZ/aF6eQ8SnbjIc3NoQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8nnhew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 09:21:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c790dc38b4so128036085a.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 02:21:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749028895; x=1749633695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+aLR+kiZ1KGuKrMttuGRYAVlykWWo5RCnMa4dfVWY0=;
        b=VsFcJjDP+hvTGHy/3BZJfuX+BtuLph550GBc1XlCv6ELN/XtQxOboCG9w4oFeC6XRJ
         SIWP5FY/7shfkb2M6zUdUxiX5H9ekD2qtt4gYt7TvEa4Ek0a+J0hO/nzNVcN4GORHd5a
         QNdHN0KCcvE99lOjVIID5jjvS8uyToKU8SEe+voSW7G99icT4mUlbY2CzMUtwPR+bmEN
         qd+qvf1O6bqN/6bDGrOlLuJdfXQg0Y2S7qcL2y/kpCT7yvRJnlzD16HMk8DOOjVU4ZFV
         1/TsWHlfttWRzeGpNAuxD9L7ex6Y3WhqBQfcmwjDjxvnaUsBm50Nmn+B5TOgLNlozGtX
         VNGw==
X-Forwarded-Encrypted: i=1; AJvYcCVs1WhsDTzmeCb2j1MwjfGsKeYWZouWU8tITwJ9lC5bbQTuU/xqJpcfifny76jBrzUvOXtkYZRmUT4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTknvdPb54PFOD2brY9IiXMzGAdEVos4MT2fm5KU76M/Vhp2t9
	guCiyYWn1ARtqci5QEn56sX98JgYQDNfUAbypY8h98jY5QLaqICDVYmf+mTroijG7dyMSjs6rKC
	lThUKHfgvqIxkvT64Q8X7cz17KRfyzfxqLgUMFUujzcWzuXNjRMMJo2pznHb/ZXMVo5lt+3cq/2
	KuZY8=
X-Gm-Gg: ASbGncsvQHOW0aPKCxn+fiFUH3WMOaWnxkXqINizgIDyEfCO4s3aXkX+xf+bXRn+tf7
	JAtCENfSY/CQmCfQNjK3qbWFgY5oCnzQ+dVnSRqrbbjFAZvfJnnPQJT7lQB7nd+9uet2Zhgfc29
	IzmlrNSlC3r0edqIKgfvG4vJFPw71UEtGcdYtRIO7jcXgCgXiVcz+7d1wuYgBzp/YJ27QIRrnRS
	R+c4Dw+2kDtt5jO5YhZsAVJHR5NnAmouuLXD7sIQ7A2lSI4L4j2Rqpjku3EOict+ojttOIMB9q6
	LjvN9XkPF4Dugm7c/sZcsy8Wl7gTR9PuyENo+8rc6oNM3eUdqH5dkhyzLYnPoUzPbxucZsZS820
	=
X-Received: by 2002:a05:620a:4496:b0:7ce:ed0e:423c with SMTP id af79cd13be357-7d21155b3damr900235485a.9.1749028895479;
        Wed, 04 Jun 2025 02:21:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMv6RZWeZ/LQ6eNRt+X3KctomnYvePpW2ORiBuP4HN5BXynMs9rse1yUNywIc6fLSS3qR1Sg==
X-Received: by 2002:a05:620a:4496:b0:7ce:ed0e:423c with SMTP id af79cd13be357-7d21155b3damr900233085a.9.1749028895133;
        Wed, 04 Jun 2025 02:21:35 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b1b549sm21837981fa.10.2025.06.04.02.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 02:21:34 -0700 (PDT)
Date: Wed, 4 Jun 2025 12:21:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: Re: [PATCH v4 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 QCS8300 & SA8775P
Message-ID: <p3qlrehr73i6aj43jwnavhlmm6brnkjkyos3h44bg7p6ozmgd3@ejqlcy2rpwcs>
References: <20250604-update_phy-v4-0-d04b12bb89f2@quicinc.com>
 <20250604-update_phy-v4-1-d04b12bb89f2@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250604-update_phy-v4-1-d04b12bb89f2@quicinc.com>
X-Proofpoint-GUID: iwHw5HtAXxgrZArVpebUopqekghBxNVQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA2OSBTYWx0ZWRfX73Y+tFtX79yQ
 8IfCE2yc6qoouq1KR+ZTEFGQs0bskwGUX6+Z2bsu9pvSN0DjDuB+QvWixznFpJ449diMT0AXoNL
 WSO+CEx097B8ncDKk/hN1NhrqcLDN0W4T8HhWtePaHOcmNiLoZLRgHE6XN79879saXZj39KMSGj
 GFV5bqa6u+O8TCaTm+CtpWBXMbitV3PDC7ZQPE2oJYRKGq5rtx+mvz9uvQVe6j+Vkvr5y0X6QiO
 1A+sXat8eg07abEkdAyd69ytqayKm/aYHxiNvnKSRvmKUQMJ7U6EORCuaK/IjfVbqDdXrYmOCul
 fbNk8TY6ban/MxKyf+g6Yzn06XqKzBnxaG0eDHsm6TmPUfH6g8rPVsf3Jg2GR5rb10UNNkZpWnD
 YJW4cGNwE03s91LTMdcE7VmFhY2OI23CTUljT91ytLm4Pj0MiGtx8d34F+0XkN4Jc8MbAinV
X-Proofpoint-ORIG-GUID: iwHw5HtAXxgrZArVpebUopqekghBxNVQ
X-Authority-Analysis: v=2.4 cv=UphjN/wB c=1 sm=1 tr=0 ts=68401021 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=FU6otyn0G4FSvijP6mMA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_02,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_022137_869728_B49AE870 
X-CRM114-Status: GOOD (  16.47  )
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

On Wed, Jun 04, 2025 at 12:05:57PM +0530, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> Make changes to update the PHY settings to align with the latest

Don't 'Make changes'. Just 'Update'.

> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Add the ln_shrd region for SA8775P, incorporating new register
> writes as specified in the updated Hardware Programming Guide.
> 
> Update pcs table for QCS8300, since both QCS8300 and SA8775P are
> closely related and share same pcs settings.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  5 files changed, 66 insertions(+), 41 deletions(-)
> 

The patch LGTM. With the commit message updated:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
