Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 370D0C3ABCA
	for <linux-phy@archiver.kernel.org>; Fri,  9 May 2025 12:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZ77QM5ZGJFJP2IyY970Vm9gWqo/8XGWuAOA7E24O9k=; b=ZD56+wQL7rCloc
	C0hHMlHYSEGWcIXfnVJLa5AFkk4XHoqsnjaci36KnbG7CvUQuEwHrQe3GKApODUtz+6t1E6KxzXcs
	n8NGqKC29JvDGRgo0ynETLg6x298ePqgwIr9wd0GKG32lcYTroBMdHpvtfQbsk6+jarW4/6VGz5aS
	o2xiHQ7AUGo+famB6ii8m/pttihwey/pDlnrjBObvThYXpi99sMEI6HmGE4nd55JleDyV0YOeaEeY
	JTervuz0xbaShYPefTzoBekBMc1tNf5j7G0DX4EnjGbEOko9An9NxVAul92gIKc1axFHBZi5xGR9S
	EWL81r9Se3Yn5mluSNpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDN2l-00000003cTW-45lY;
	Fri, 09 May 2025 12:41:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDM3r-00000003SDH-0hKn
	for linux-phy@lists.infradead.org;
	Fri, 09 May 2025 11:38:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5499H3go012217
	for <linux-phy@lists.infradead.org>; Fri, 9 May 2025 11:38:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wzY8pBM41DENYEFwwG+7GSqI4H2wlchni1dLBitsUOs=; b=FWCa/3Hk+EvtQiK5
	HqAgKsFZg1Lw10+Dbnq3j6hMAlZCN/1WognMOM7lVXiuVPaElDB/e4nJIRB+1Sk1
	0DQComVyWkX2guws/sUNwTmyTl+iioVOKzR0GZk8bIUKtyLb9Ys4GjoZsesfV3Xb
	BVTKgH3xHd0ESXlHEQf9qGARqYf0i9ptESmzCpDbbZcVp19RkCgQVytEF1JTc0p7
	azqvW7R8ZFm1gFWdJL+9n606bl6Aa3Ex8uMkmQGmlXlQAtLVxkFnAYv/jgVBQrHO
	oOgTKwzHXrmGUTbvTSCf/HNhwoWjlXMp4UMApZ1mRmSNqXyHO/44VvTvctA73tM1
	sdfcNA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gt52uq10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 11:38:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f543e296e8so5430656d6.2
        for <linux-phy@lists.infradead.org>; Fri, 09 May 2025 04:38:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746790717; x=1747395517;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wzY8pBM41DENYEFwwG+7GSqI4H2wlchni1dLBitsUOs=;
        b=Vns9fM5RBVVL1DQWgAa7/6W8iuwkkJ387qdT9HeCzCPoeT33RgosaHJnliyfNeeIXg
         krrdl6dnCELQFpTVX5Fn7L62Xiz9422Bc9okh7+ROpRMK7/ticfOY9jCbLLCZYmfExgE
         w+UrOGnp4PZIDVcDTeXDsZLfp7Ra9NZKXQriTtrNEG1XFxzOUwQ6CCB+nhIOWgbiaLzv
         ZVAZ7+Ie9xYAnatB/5eiCt1o2RzvLBr9BdzsSg4Pg/cEi52yQQC2jJ5oW6qMHRte62m2
         KSs4jWbc4FA2oYWFIhhZQbggiwzhkwhhy0ZZPaz9XxZV6L/lmUW1HaFBvAd3eOXNfp47
         ZfBg==
X-Forwarded-Encrypted: i=1; AJvYcCX0R0dFEoJNU2p0vGoFIF/wB88JLxYjjf3AJStuAPgbpXEdlmIrBNalJ+CioQIemPS70kZQ2ZpYt3Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuaNpidt98JkM2xh0sYCUc14+RURFK4tlSQKHh3ZqjlcWZsJnO
	9GwdhBdNu9EMuPN7SWwQTpcAPytUgs6Whnqvmft926lyolaN7lRmGXGb7C1AFpUXAbeo3/DszJw
	Wq+T3dWFiuYaQlCahTRm+/pgB1uJu3CBeju58IWkoer34KmmUHX82E0J+vRGq0WyX
X-Gm-Gg: ASbGnctEHOuivVykjB8YcRPLjEaz0d50PYPCSDzzA5b+3ynGjK+laY/rWWfA6ajGN+g
	UP2ZCqRl8VwkqfFGa8m+HaEvf4lX2gN61kStpwa9y7cANMkSoYZMcpHcX91ImWrSoPfp41+yQje
	40+YtlZrBm3fVQHy+NngAynYgC32r2MEMESe0AHAuc+fPiRT9C/Vqq4yA1JC161QQINNkYaDRqq
	rg0g/Dy7HVZusLjy8pO9iORWsgNG2SKlXWQwCeXHNAEJzi1wnDGgbKtALze5tMoaza0YQxhcnLw
	4cNTSCAo0twy5QG/8KaNaiDqDbYVgeDhfUb1gityJIcW6lEeoxbuJwg5aRFnpLUh2xQ=
X-Received: by 2002:a05:620a:390d:b0:7c0:c42a:707d with SMTP id af79cd13be357-7cd0114f7afmr171897385a.15.1746790717086;
        Fri, 09 May 2025 04:38:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2mTyIvcv8MpYVvW+C/BCuqOrS5cjs+4maoMxoSUTTRMdl+MKEdX34QZo79ZW83evuQYcgnA==
X-Received: by 2002:a05:620a:390d:b0:7c0:c42a:707d with SMTP id af79cd13be357-7cd0114f7afmr171895185a.15.1746790716679;
        Fri, 09 May 2025 04:38:36 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad22ba47376sm10450066b.53.2025.05.09.04.38.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 04:38:36 -0700 (PDT)
Message-ID: <104e863f-a5c6-432d-8f65-0fd87602b288@oss.qualcomm.com>
Date: Fri, 9 May 2025 13:38:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 11/11] scsi: ufs: qcom: Prevent calling phy_exit before
 phy_init
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, manivannan.sadhasivam@linaro.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250503162440.2954-1-quic_nitirawa@quicinc.com>
 <20250503162440.2954-12-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250503162440.2954-12-quic_nitirawa@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDExMyBTYWx0ZWRfX6KAulHnvkV4B
 55J3hYd2MrD+Zmxeun8zyTIJ3EV0RXlFwJPqL88tLl9caq8rEELGz8LQXMht4A1OWPeFS3GbR/t
 KaNGZXczuxQ4LpXWRuTV/ILiGIYzLkZsaDOTn0sK5d+GyaHM98pjydjtazZKj+80dxCobiJz02y
 OiNDStNXQK1dzVzQtXZD1BlNWiv+dKo4X10lccfiPUQPXa2ybPJqdffCeVtG0T3rvnhZGIz2eVA
 9gKm+lu3L7n1WyyEuFq+uddPbI0BT42teVd2NDtUuSJVX3tpwdnzrUU2j7UN1USfCSATu10zq/g
 yjettSfdaYpOkO9xGYaN9BOcCV5P0oHSsK4gdFB73xuS9BZaHUrDJB07orfChTdzJxHki/T93WX
 3ThDfdCkXvdYA3KVhnmL37C7N9UPNKdZdmlgZBhL8jEi3trudnaz0fjZrauoH2KgW53oOioe
X-Authority-Analysis: v=2.4 cv=LKFmQIW9 c=1 sm=1 tr=0 ts=681de93e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=4sLBAxgaFKQY7hVYck8A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: WSC8tYq0N4AmCg7QG2Ghclh0Yz1HE9z7
X-Proofpoint-GUID: WSC8tYq0N4AmCg7QG2Ghclh0Yz1HE9z7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_04,2025-05-08_04,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_043839_214254_6982C8DD 
X-CRM114-Status: GOOD (  17.18  )
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

On 5/3/25 6:24 PM, Nitin Rawat wrote:
> Prevent calling phy_exit before phy_init to avoid abnormal power
> count and the following warning during boot up.
> 
> [5.146763] phy phy-1d80000.phy.0: phy_power_on was called before phy_init
> 
> Fixes: 7bac65687510 ("scsi: ufs: qcom: Power off the PHY if it was already powered on in ufs_qcom_power_up_sequence()")
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index a7e9e06847f8..db51e1e7d836 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -482,7 +482,6 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
> 
>  	if (phy->power_count) {
>  		ufs_qcom_phy_power_off(hba);
> -		phy_exit(phy);
>  	}

You can also remove the {} now 

since this is a fix for existing issues, which I don't think has any dependencies
on your other changes, please post it as the first patch so that the maintainer
can pick it up more easily

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
