Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B13D6CAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJLJmK0nkhWzJpSEgNr3ONg9xQPZknfWu3z0FhHJMd8=; b=E71tEBH6X5ArOu
	fcYac/6JcSZrs4sUocTToqFoF8CQXqjeNFQPtW1Yshk1ldjkVLeBMfacM2zhkoeZTqbmFMrit3K31
	ED8CgxvmudyOuUyyVn9y3JpxYr+UGJbvgfhXY3O8USF3hgP1qUjASwJodeDL9E2TCMoolu18qWbGh
	zBGj1lj/XyVSWKoQ+WSj87kZf8FAEKVPcwNet0iD9XWqXSAA2KSwGMgVVBghq1tjyhOZ4cOI5d8+p
	ml1er1omFkx0X7Rbe2onHYOkXuBFU0dX0JcDOqlRqQmjnyfHtU7GoY3I/etvpW26I9h1xY7WlyMnz
	JcwPw4RAGuUHamqiOR8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzKb-00000005WZ1-0AGL;
	Sat, 20 Sep 2025 15:16:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzKX-00000005WYf-2dLf
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:16:55 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58KDPQkd019437
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:16:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+jyAldBzt3O+lpQDlvl0UcYG
	go7Gu4oMJKsbVtP0MDg=; b=A6PnUeVTj7ZnjzVlvTD5fHTS1hZDMEWC/O4i6+ng
	rf8ufIncul1Dg9Zi4jDcvu8j5Y/Fclmw9ooIssX8GxetaMbuA8ILhrOa7rukQG6Q
	Pw8BTysufhYO5a8JVvDphR0n261nPTHP4cH426FN24l1kWeBD42YZSjkcNOYG6YR
	uJi7hlsh8Moj7B2FawhFRvlS8oeOy5rsqDgLHjRQvkw2kTYUqnnbIZWEz2NA03RX
	X/iK2Ix85fxI04suFZrQG1blLK43SCxjctCIXZ4VRc0c0+8KbvnxNsrYCBt4KU22
	OSSX2zSOYe6wN+T0YPA8NVVQ+Y123cRUc5MhKa8hKwH08w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mbv0vge-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:16:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-82968fe9e8cso902470885a.0
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758381412; x=1758986212;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jyAldBzt3O+lpQDlvl0UcYGgo7Gu4oMJKsbVtP0MDg=;
        b=h41yG7hX/HOk6SHfVBgl1olW1J+sdrFaeV9qosl0Ma7w9B9REY7eu0mr2duc5VF3Hb
         09ZoW9DLmgpQ42hK3x5+iOKq8Cm/dhk+uv0Bm3L0T0wM0jWlUzO85/ld2eEYvZRPYU2n
         YAvXVffKgTjBXpvJOFsfHESEJE8hIVBpgy/DSst+abCl1OK/Y9Isb9Xm6A6TE6wUWlkZ
         YQePfKzmO7N+G4H2dlORDc0/u0xj9jx7FmT6QAUZXn06hHZ3n4VZTGGmrdwpdfEQ+Twb
         54IEaucN9xOaIeoO0HGRClYIfWcxIo25rtIFh++4y+Ts3YLTj4UOeWXuJw3Ldi4Nasvs
         29zA==
X-Forwarded-Encrypted: i=1; AJvYcCXngqxtpJRgET6231pMHum3wCKrc0HFHkgyXdT9DoUjou62LmGNLe+lD8RhXx+gYeapUWvCZDYa3KI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPUclc4fuXcWk4VhZ5TBiyk47nOtst6LH9U4fbwOfYAneP3hdC
	MCLrFm7CulLOgUGW/MPM+WLJJpE5PPWwihM79R99kBwzhslLFvV4DXwTVtz1+cDHQKJaDO5y5kS
	5++brQ4yxOtO0c8dxLJWqIODd5mSx5Enf32MYBPh7sCnPneGJohHNVlU5+2rq8iqjgwO1
X-Gm-Gg: ASbGncveItDu/HSywOVamcseqAnKqCX6Qz5LQpYuMRx3AmOsG2Sfo6tUzj3w7TR3NkF
	rOmCPGYS9pFq3lcFuc7OEgnHzVgBCeNtIpeyfQb+vV9kFbWhtxDJwlMEN5jI906Rj+UMpKPxSiN
	JkRQGCw/NRIC9kFunemencS5fWKdsGGysGozv0elbhrY7APnmm+plw2ebYr4ZR0UL9og8qqUbXu
	8VKfMJOGJvMNs/wYAzNqJ5xoG2l0n1e6AyV46CGylKtMNH1LOyEZNpVdpDmgdfog/WMgV75gnhk
	92DpyOrWJggPjPYSs3OoOMcJgqBK+9XLjteKWUW3dh8DJHN5riP/kGiZHAsbGxlk83lKDY+iA0n
	T0ZXl0pSQSGSzXfrEIuf78x/JBToHizNsE7ouIIja0WJrNTwLtHhj
X-Received: by 2002:a05:6214:aca:b0:740:f45c:5d49 with SMTP id 6a1803df08f44-79910ca7108mr77889886d6.1.1758381411542;
        Sat, 20 Sep 2025 08:16:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWdSx0mnQGk/Nq/NA5PY+5t7voihJHBZXCh93RSAaAbgvzjBcB3+3BAVhRHQ14TfWUTCc6KQ==
X-Received: by 2002:a05:6214:aca:b0:740:f45c:5d49 with SMTP id 6a1803df08f44-79910ca7108mr77889436d6.1.1758381410917;
        Sat, 20 Sep 2025 08:16:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a6508483sm1996183e87.49.2025.09.20.08.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:16:50 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:16:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: kishon@kernel.org, vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Update init sequence to set
 PHY_ENABLE
Message-ID: <qpw26fqn322tprf7ci34sn66codluytg6rnkmppdr4jpjwp6ud@hbawghyesvdv>
References: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032158.242725-1-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ZcAdNtVA c=1 sm=1 tr=0 ts=68cec564 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=UHvurfnqH0zupzNQNmAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: K2Pwu5rD2K0Du3AL2sYQFlzbrvTIkVby
X-Proofpoint-GUID: K2Pwu5rD2K0Du3AL2sYQFlzbrvTIkVby
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMSBTYWx0ZWRfX41crhRkZCLUa
 v2PI1te1r4+5Qem6UEeEwdir2ygq+IIWN8vPbGmAF6i3jbgceAJgMo47ivxCytdWtuL6daB9Ws/
 1uGKrfDxXGquJ5KICa8MPqQE5olBMj2HQqzP+IYyQAoW1gJgFw6KjTJZpo45XPszY7iIu2RFUsF
 dyEJiov7hx6+jL6bq0E3ltZ6AiiKkCW1NsSiwetIYeKwo895c9end2jOQHk3bIMkRB3IufqGUc9
 DB2bSQIjIsZqsG0Kga/EWvPk/wGpAm0hwhmmVYxXWbAA2E6gDLgNzaaf+r6BJB6HOarGtsQNgoL
 xxHFjqwHWx1QxkUNVuATq/quw93iyA7tXDi8hm7KETfUTNjgkLa8nPJnOWr1JZVHSYg1P2OhK5f
 Nc1boIVq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 phishscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_081653_785827_7DDD34D5 
X-CRM114-Status: GOOD (  14.75  )
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

On Fri, Sep 19, 2025 at 08:21:58PM -0700, Wesley Cheng wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Certain platforms may not have the PHY_ENABLE bit set on power on reset.
> Update the current sequence to explicitly write to enable the PHY_ENABLE
> bit.  This ensures that regardless of the platform, the PHY is properly
> enabled.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
