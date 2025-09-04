Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D92CA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 12:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1V22qqi16lra6dJBPhMn/fs6eL6JuJliEd6azoK/Jg=; b=RA7cvlJRqnu3M7
	pzcoIZl86a6MbyQDfY2hwnPYS13hB+j+g6IVKaYupGFG1NIrWHpUQrVY1gjUPzzTgThM+XPcffeai
	Tfku3xkXVEvXfUZPJyYTdWH59km4a3bJuTVmwONdDH+GIltEIgrKclBUIOv6HAhas0F2yF5k8pspE
	Rs+s3IXoUE2TSpdauTEFIY6+I/BwNGIgKpi3HUE4Awm3L1Lc0mcRw+IoLLQMfTr5N+THumVUGSrjJ
	/rbRolh7qOHW1CDZApsR+rAWPMoJ0yq25nPQ5ZM4YzOxC+rRyN2eb9H0k0rWzgeZYcJF7SV/RxJVI
	pRZCH9VTi/pl8Z7S9Bqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu9Kz-0000000BegY-0esP;
	Thu, 04 Sep 2025 12:45:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7uC-0000000B8Za-2DHd
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 11:13:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XA9d013626
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 11:13:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ULLB+9K4Q3rvhisp74Ypegx1
	/bn4JOB/4G9A7ygv2oM=; b=KuIltYMktCNubo/2o/omv44YQH4j5GcBNFkL8lHQ
	bIxcz3Pvwd4uxYp4Pt2tp8nYHNbwotjTMLz+/8WQaFs7554Al8i+7Pw9L9n5Rbhh
	trDCsnQBPYcGKqjg5/XQ/i780Zq+7Kw+9qITMkLl47Pwft3ETM1BLruUMKiulzeJ
	eq6GiBs/CxlBcmA7lxLgvz4uoxk4cW8nKkGX0rMpc+PqlSQ95++IyTth+rMf1prf
	76VweQwvR8+IVPDXfNgoXjNwsvbFteYWv0NrQxIm0D8Oaii+n+lxs/VGYPuGlWV1
	fUr15ce8WE5+5lNX4xkZr9/2h2b9HIlShUx49mFYeQrPvg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyb5pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 11:13:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b335bd70b8so16124131cf.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 04:13:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756984406; x=1757589206;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ULLB+9K4Q3rvhisp74Ypegx1/bn4JOB/4G9A7ygv2oM=;
        b=fWiq8fIRXpMOnMmALwKYMMc+ANV2ZjFxnAm4nRV64mYbm0ucxYQ5OgOt4Wo+q3dSdC
         B/ej44/A0xFa+v6mkY9gPFp2rr7+bnu5TKlpwVSmf+CKQVb7IpbGWLDdO2aVCdEbSbQQ
         pVwSyMY8dpmf7LsK5SWZRnVOouiNLSy4iKw7WjAkfcTDkaCa3xbleA44IVxuz7pNS/pI
         FDUavzLxgizToWl/o2NDxDXMGrbZyF8d3V9yoNR6dPFpmurkK8mkAjnCLUKXoWvHToF9
         DDiMnotbQylh95rTVbO9lEo8KVicsJK0YFYEmrooMPbbueWgBPD/39QYEe8Uj3wFMq02
         x2EA==
X-Forwarded-Encrypted: i=1; AJvYcCUw6nHasQKV23gg8rrr71HjacmJUfygbrBe/1N7nUc59CQ0lTNEXy60ETEFNXBFBbluROoEGn4UEls=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9bAzI+nY2FtwxvwYkDe/F3E8LPbBuKBSRj2A4sN5s+q2IQUh6
	E+iKFC8f1KfUgeYCHh+7E/qXsGuLuk0VLofu6Sd9/aQXDQVEIrPjKW1XQ/t1Wwe1xFAVjbDBHbb
	dVlmY3JF2cngnrGmr5Yl7M6NCL/vXMzthFF45lAXV1mx09O84L99lKoUGaiJbEHxmM2Ky
X-Gm-Gg: ASbGncuRiCXntb/5Kx8KRFTtffnpB+b3mFFMhYtsFGF7O/Cywf/hL6DGGOhTFoVkaoZ
	JF0TiB+1zauWlsg7bKD6yDT2qjbtz2l8BybxV1pQl+uX1CjsBL+rYTvXJO5sB620NZa4ZEP8gy1
	KOxrmTRs+IVj3ZSzFcGvMj1Kj3/TEVDdGyXj8evK8x5thfGQweC3YqpoP7YAU3hUXfgvGq4SauR
	dq5b0v3UYPhqn0x7em/ST2gxAN/r4Y31YE/YfS0a3RQk287ipJwJC6LAN7NRYQT/CGiPK+za9LR
	2u0QUlaR2/njjHSaf281MC572gzGd5OClNXqG9OEnbH7Tbu5Halq0Krpc2xXatcjROraCEc1WFb
	mzzefYoPfdd9jK0lxK8kIORCeX6eVq8O2pD0ZXgcJ4plvvItILKWd
X-Received: by 2002:a05:622a:3d0:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b31d841b8bmr206347301cf.28.1756984406582;
        Thu, 04 Sep 2025 04:13:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExtpn8wmXH1fQWP57ni7jX6R0VHwMOxVbasxblzi9W2aBLMBFT18vMVRsZUaHpRFJcGl1jqQ==
X-Received: by 2002:a05:622a:3d0:b0:4b0:8e2e:fd9b with SMTP id d75a77b69052e-4b31d841b8bmr206346731cf.28.1756984406044;
        Thu, 04 Sep 2025 04:13:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad0718fsm1116900e87.112.2025.09.04.04.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 04:13:25 -0700 (PDT)
Date: Thu, 4 Sep 2025 14:13:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8
 register offsets
Message-ID: <6nhnerb5yooodw73ku6yxtp7ud3irwhfwd5zxjwcwbws2q5y4x@7fj7dck2cv3a>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
 <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b97457 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=YY9QM9cTantD599Z194A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ssbXfK-xsb9XMnXiEM7lEoktT0M4NAdd
X-Proofpoint-ORIG-GUID: ssbXfK-xsb9XMnXiEM7lEoktT0M4NAdd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX88FYudXVMJZ7
 Sn0ZyejVYtPGhpuRbh4KSmRkcVzGQlo7kghKPVwOaAW4Y4awykP3WgMZDu5+eSP0AoFoD8r1CTq
 byuf7Ye4tN1Hmz5QupifQsSz+UYoiDjC9bS8Gt0lEDCjpCb1fEgIxzp6WSLlbR88asGO+EhyAsp
 4d0CUoCtIcSJ5+n/winYBmBT3QPT/ggx8um4AN0LUME4gF0od32pDwHHBGf3RTbMg2siAOnu8uY
 OD0u0Ql8Hl9nt4khHOGnbAJ6pXiRSSMVlSZWzbDQzXmolsJO75fkST0f2TVbjyXwOQMvT5ARUmD
 fF6HTXpkC28B8qOdLbBM+wSbqOMbWozsWJj9Zks0gs54dWbPv0cGQdaLICD69MnAYEEGvW5Fgl7
 4lc0M4HI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_041328_684370_F7D89D66 
X-CRM114-Status: GOOD (  16.27  )
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

On Thu, Sep 04, 2025 at 12:47:43PM +0200, Konrad Dybcio wrote:
> On 9/4/25 8:55 AM, Abel Vesa wrote:
> > Add the missing v8 register offsets needed by the eDP/DP PHY driver.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> + a couple folks that I talked to about this lately
> 
> Please create a separate header for this, Glymur contains multiple
> "v8"/"v8.x" PHYs that are not identical to one another (or vs ones
> present on different SoCs), even if advertising that revision

Is it about v8 vs v8.xx ?

> 
> It may be a partial match, but there are also stark differences
> 
> Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
