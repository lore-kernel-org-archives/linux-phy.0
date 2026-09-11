Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A69A1C88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 13:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKIRHho6zLAUxqfb+BSpGWNLQHLUDS7GbKvHh3+m2E8=; b=D5vX09jL7HnyMR
	QEjkab1el8p0jH9354mcvMJvW3HP20sG5kTiMQqVvw2rIq9H1cGmOIaoPFV121uUYfh9IX+nWJbrb
	3fj8lRXMbGsLNKDFYnRyz7UY8VWL+N+EZGq+M8CIr9+QYLvgHVMnJta5VnQNlZzWMQ9AQ8vHxRcmr
	LefWxyVbP6pFkIvEQG7lT5IB+yaAkYBqOJPl8YXiyOBOWODIt4gPI+7O7B5kWLXuN5RMQW+VXrn82
	Sd1aOncIuWbZvS9tbdCf2ukMtnh3qmWuA9PfrWZ2rbC9BjWBx2gwCY7TMm2QBoCzarnplBlRYxRXE
	dYuzsgQvxZ/XrrfvnOlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51PD-0000000GlGN-0Hyf;
	Fri, 11 Sep 2026 13:35:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51PA-0000000GlFS-1BSn
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 13:35:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BCjBQc4141171
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 13:34:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rlEXIvgwRQfsHm7KtaBqwgRU
	nTtOOLNR+RQID0qlb+M=; b=b0CwuEQajB0dD0vX5AVMIENVbCA04WAMWp6Ve3DN
	mU7LG8QkJwsaoWqw/CYM1oZB2Gx9WmVEREenY6m2Vmj6k7zgncjYUlvySfSTOcMW
	IDBoDRpvRiQzlXfGzFRY6mOt9G1iskCzeSdB7jM/+8grbyro7PTkhqH1HX8Aokpb
	zN+BpOeSqbP//15I4BhRtJzawY5/g+MOzN4OyfDe/+lOp9QfCGmG7ZgJ0EYle1x6
	4T22vFumxhDUtENHdyltU9Ows0jj+PKlSdhuHq3E8UtcEwQ8DYTWU+zBdwb0H1+k
	gzn9G/RUG6st67G8U1A4yOXVr55ABerkEpClh95aJanvRg==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbdr9xt9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 13:34:59 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5c7d5444845so1067811e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 06:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789133698; x=1789738498; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rlEXIvgwRQfsHm7KtaBqwgRUnTtOOLNR+RQID0qlb+M=;
        b=OIhn21vG+CtTIXQO8N5MJw31e1J1VWUEyaC3LnEw9t3MNijnbjZx6xGSD4j/3rxAAk
         A0O9EFlXo4vw2Ycf9kDa3EuHOPevT+CekMZlmVkXnZdsJe+fCNgjjrTQuZ/AznYTtKjr
         XNj+eddXYUMfc1L2iU15rCO0mluew17P+aM3iUkbVAZvNHgecOeKVuYrprpCggvDDjz2
         WJ6vVGMX9+ldVMBnPbatcnRznJrCHyRd0/iDUNsznyNGLMknPuYws74UfgvoI3xjmujC
         u1DBmpcSil/mMHD/AZl6qXtcNwfzpzem7ynHPrsohFS2mdxO+bDKeS9DvAX5UZzpQ2oH
         +Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789133698; x=1789738498;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rlEXIvgwRQfsHm7KtaBqwgRUnTtOOLNR+RQID0qlb+M=;
        b=kALqVvAxHJ513muAs5c9r0x75jx9C4MjnPTO7EsIIjgT5iqOU/79QgkPlqLiOfOnEm
         CLMUzkP6V3WeYB7DMW5Rn7R90h9ThWbkOpbO4i7OKrEJlXcTQtgo+fqYSBVCytw+IA3C
         JfeJElmr7wE489l+Mh6QByaNq2frBlnZwM8zQCKLcfABBf0J4Sok8ekjb7VyWraGr7F+
         TMuqhhAztQcBppKHURPzsfeNNHCnqcoe5Sryb0J+v6yns3cLBWCEAKsb75PU2ymS6dnJ
         KrUbtPIblMNM6X7JJJWddDIj1aRv0um0hgaZ9ce0ix2knw92M5xWccwF4d1Ag9TR9wCM
         ExUw==
X-Forwarded-Encrypted: i=1; AKwUvBwR24hMFR0jSbQiaYDwOqMvH74Hep3B0Id4z81ae/Oa2EZa5W/pyBbbvjOcR5Z0h4gjikFARuvMNgo=@lists.infradead.org
X-Gm-Message-State: AFuF++nxdQM8DYxVRBtJsSbtsRcNvFXij6wn5bJjvHdl0jWqvP4MOcSF
	aISKEaN5/MC1ugBO2iGETjnzdLrGe2W4fNTPKEsOyJzMzbuIhUf/cvqgqvuF/JsA8OEnJ7bD3is
	FVOMhQuAv9SWJevS1lsW8uLuTZDJ8Z1agrfWziS/hHq0nCXpjH989qiEjS6ywgkQnx5lJ
X-Gm-Gg: AYBFou2VlHbO4GFRhFzbGTYcHJgOy1fKdLYQo38y2vcYXQcruFQwDnFg91IRzdhHtj9
	dJuOZTXNddWXF2jIfbevlBoobHpAuzcaCvunNooIDWAptkS8TOhAh1yd2Ta+Txd14zKN76eiG6+
	o9J5fwUtb86blSyoimEmqR+UrhXOrnbWIDqDVlzi3unEm9dFKls9P5Kk2xJ2Fh1Hfq83lk0NS/U
	JsSqltC+7748lhDnUdo5Ye0ZzNTo3ys4QQM0bL64FLl1x+Q9x35puCBrUXyvv4oaE6W4MptiPju
	A2jguNm62GDEJKEo7GWNFgPTy4tSr+gumiMBjmSkeQMYJf494ndz/7PYsmRrVo6bDCsEw7QieTB
	QEX9EmZ8CATAz0A==
X-Received: by 2002:a05:6122:c8f:b0:5c8:2852:36cc with SMTP id 71dfb90a1353d-5c846277c7dmr5049730e0c.4.1789133698355;
        Fri, 11 Sep 2026 06:34:58 -0700 (PDT)
X-Received: by 2002:a05:6122:c8f:b0:5c8:2852:36cc with SMTP id 71dfb90a1353d-5c846277c7dmr5049629e0c.4.1789133697651;
        Fri, 11 Sep 2026 06:34:57 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-486eb357288sm6149026f8f.29.2026.09.11.06.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 06:34:56 -0700 (PDT)
Date: Fri, 11 Sep 2026 16:34:54 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Add SD Card support for Shikra SoC
Message-ID: <lubx7heokegundvb5yndi5g2kaw4jol6tgegyt5qt22axf4piq@jacg3xx3ooyg>
References: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
 <20260911093932.2376058-2-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911093932.2376058-2-monish.chunara@oss.qualcomm.com>
X-Proofpoint-GUID: eFLt0Qv5YhrSbHdL6X8CzNtpzqWRsadP
X-Authority-Analysis: v=2.4 cv=PLmaavqC c=1 sm=1 tr=0 ts=6aa40383 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=Tcdqd_mqXDpkZi4He8MA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: eFLt0Qv5YhrSbHdL6X8CzNtpzqWRsadP
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDE4OSBTYWx0ZWRfXyWD1GHMfNGSa
 emPFrNZKas84jTV4C6z/h+DlsSwtdNpd6pofBLGx1vI8C19BXLcFUaLUs4OCfVMqtabdqVd1VZC
 eVx+eKlA7f/DsPn0Dcio03KG2mkJrrA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDE4OSBTYWx0ZWRfX1PrHUjuivFeD
 csopMLha5c2yUVlUyPjfRK7UjDFB0cBtkQw+wYYyLXlflfChSRkjTfbZP4bz+jYkTJLcPWyUOxM
 AA0ayIiDqGCmi1Afc2cs5xJHx584uc8r9RP5lXXdba1guc93KVLt5Yt5bciMyiJY1sF0LZ7G30x
 cOGtvgDurgE/aqqV1BbdYCwOfom/Z3wb6767TSPxio7fvFYP26WBzDfns8TG36sF1LJLi8jcTO3
 ogpbTHyUvpWLZB4qbmGUGmkIkCGUyZM75pccWAFtaSBYY1sdmqADi/79/JKQvq4fZ8EJlDq4VZM
 P4fmHMwXD/I/xbcGZDQCQxP4Ee5FEiSoGQtzSqA9/LQEeRnl2totRERIkz7HVBUCLfRUjG+ldWc
 Gd1htkyTdO20ewsuWU47UrSwmnmcii7a7sQ5dATIzgQhPBked2Y+6KfXX0/XaNv3puIOLFU9MaR
 ZZ6SZgmBODf5QZW4BIw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_04,2026-09-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_063500_444602_449632B3 
X-CRM114-Status: UNSURE (   8.63  )
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

On 26-09-11 15:09:31, Monish Chunara wrote:
> Add support for SD card on Shikra SoC and enable the required pinctrl
> configurations.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
